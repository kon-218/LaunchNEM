#!/bin/bash

shopt -s extglob
source ./config.sh

# Now you can use the variables defined in config.sh
echo "Submission ID: $runid"
echo "Name: $name"
echo "Number of structures in movie: $nstruct_movie"
echo "Exploratory ensemble size: $nstruct"
echo "Reduced ensemble size(s): $nsample"
echo "Step: $step"
echo "Number of processes: $nproc"
echo "Random: $random"
echo "Initial method: $init_method"
echo "Recalculation method: $rep_method"
echo "Number of processors: $nproc"
echo "SP: $single_point"
echo "ORCA directories:"
echo "$orca_in"
echo "$orca_out"
echo ""

# Script for running full NEM workflow with representative sampling
# Structure of the workflow:
# 1) Pick geometries from the movie.xyz
# 2) Setup ORCA inputs for exploratory calculations
# 3) Run ORCA calculations
# 4) Parse ORCA outputs
# 5) Simulated Annealing
# 6) Parse SA output for representative sample
# 7) Recalculate ORCA using representative sample
# 8) Calculate spectrum

mkdir -p ../../mol_${runid}/

# Create the directories
mkdir -p ../../mol_${runid}/ORCA_out/
mkdir -p ../../mol_${runid}/ORCA_in/
mkdir -p ../../mol_${runid}/Spectrum_data/Spectrum_in/
mkdir -p ../../mol_${runid}/Spectrum_data/Spectrum_out/

#find ../../mol/Spectrum_data/Spectrum_in/* -maxdepth 3 -type f -delete
#find ../../mol/Spectrum_data/Spectrum_out/* -maxdepth 3 -type f -delete

#rm -rf ../../mol_${runid}/ORCA_out/*
#rm -rf ../../mol_${runid}/ORCA_in/*
#rm -rf ../../mol_${runid}/Spectrum_data/Spectrum_in/*
#rm -rf ../../mol_${runid}/Spetrum_data/Spectrum_out/*

# Start LAUNCH 
# Launch single point calc if specified
if [[ $single_point -eq 1 ]]; then
    echo "############################## Single point calculation ##############################"
    start_time=$(date +%s)
    # Pick opt geometry 
    echo "Extracting optimal geometry from movie"
    ../LAUNCH/Pick_Opt_Geom.sh $input_file ../../mol_$runid/geom_opt.xyz 

    # Setup ORCA inputs
    echo "Creating ORCA input files"
    ../LAUNCH/RecalcGeometries.sh ${name} $orca_in 1 1 ../../mol_${runid}/geom_opt.xyz ORCA 1 ${nproc} ../LAUNCH ${nstates} $rep_method
    echo -e "\n"

    # Run ORCA calculations 
    ../LAUNCH/slurm_run.sh /sw/apps/orca-5.0.3/orca-install/orca $orca_in $orca_out ORCA 1
    
    mkdir -p ../../mol_${runid}/Spectrum_data/Spectrum_in/single_point/
    # Extract ORCA outputs
    echo -e "\nExtracting transition properties from ORCA outputs"
    ../PROCESS/ExtractStates.sh $name $nstates 1 1 "grep_ORCAUV" "_output.log" ../PROCESS/ $orca_out ../../mol_${runid}/Spectrum_data/Spectrum_in/single_point/ 0

    # Build single point spectrum
    workdir=../PROCESS/ 
    echo -e "\nBuilding Single Point spectrum"
    filename=$(find ../../mol_${runid}/Spectrum_data/Spectrum_in/single_point/ -maxdepth 1 -type f -name "*.exc.txt")
    outdir=../../mol_${runid}/Spectrum_data/Spectrum_out/
    echo $filename $nstruct $nstates
    ../PROCESS/CalcSpectrumV2.sh $filename 1 $nstates 0.05 0.005 false false false $nproc $workdir $outdir $sigmaalg $verbose $conf

     # Output time taken for single point calculation
    echo "Single point spectrum ready"
    end_time=$(date +%s)
    execution_time=$(($end_time-$start_time))
    echo -e "Single point calculation finished, time taken: $execution_time\n"

    # Plot single point spectrum if required 
    if [[ single_point_plot -eq 1 ]]; then
        echo -e "\nPlotting single point spectra"
        python3 ../POSTPROCESS/postprocess.py ../../mol_${runid}/Spectrum_data/Spectrum_out/
    fi
else
    echo "Single point calculation not required"
fi

echo -e "\n############################## Exploratory calculation ##############################"
# Pick Geometries from movie.xyz file
echo "Picking geometries from movie"
if [ -f "${input_file}" ]; then
    ../LAUNCH/PickGeoms.sh ${input_file} ../../mol_${runid}/geoms.xyz $nstruct $random 0 $seed
    echo "$nstruct geometries successfully picked."
else
    echo "Error: File ${input_file} does not exist."
    exit 1
fi
echo -e "\n"

# Setup ORCA inputs for exploratory calculations
echo "Creating ORCA input files"
../LAUNCH/RecalcGeometries.sh ${name} $orca_in 1 0 ../../mol_${runid}/geoms.xyz ORCA 1 ${nproc} ../LAUNCH ${nstates} $init_method
echo -e "\n"

# Run ORCA calculations
# Creates name.output.logs in ORCA_out directory
echo "Submitting exploratory ORCA calcs to SLURM" 
../LAUNCH/slurm_run.sh /sw/apps/orca-5.0.3/orca-install/orca $orca_in $orca_out ORCA $nrep_split
echo -e "Exploratory ORCA calculations finished\n"

# # Extract ORCA outputs
echo "Extracting exploratory transition properties from ORCA outputs"
../PROCESS/ExtractStates.sh $name $nstates 1 $nstruct "grep_ORCAUV" "_output.log" ../PROCESS/ $orca_out ../../mol_${runid}/Spectrum_data/Spectrum_in/ 0
# echo -e "\n"
workdir=../PROCESS/
echo "Building exploratory spectrum"
filename=$(find ../../mol_${runid}/Spectrum_data/Spectrum_in -maxdepth 1 -type f -name "*.exc.txt")
outdir=../../mol_${runid}/Spectrum_data/Spectrum_out/
sigmaalg=cv
echo $filename $nstruct $nstates
../PROCESS/CalcSpectrumV2.sh $filename $nstruct $nstates 0.05 0.005 false false false $nproc $workdir $outdir $sigmaalg $verbose $conf
echo "Spectrum output ready"

# Calculate exploratory spectrum using NEA
if [ "$exploratory_plot" -eq 1 ]; then
    echo "Plotting exploratory spectra"
    python3 ../POSTPROCESS/postprocess.py ../../mol_${runid}/Spectrum_data/Spectrum_out/
fi

echo "############################## Representative Sampling ##############################"

# Check if there is more than one element in nsamples
if [ "${#nsamples[@]}" -gt 1 ]; then
    echo "${#nsamples[@]} samples will be taken: ${nsamples[@]}"
else
    # Skip if there is only one element
    :
fi

for nsample in ${nsamples[@]}; do
    echo -e "\nRunning Representative Sampling for $nsample"

    outdir=../../mol_${runid}/Spectrum_data/Spectrum_out/out_${nsample}/
    mkdir -p $outdir
    filename=$(find ../../mol_${runid}/Spectrum_data/Spectrum_in/ -maxdepth 1 -type f -name "*.exc.txt")


    if [ "$(ls -A $outdir)" ]; then
            rm -rf $outdir/*
    fi

    # Loop over the values of ncycles
    for ncycles in ${ncycles_values[@]}; do
        # Loop over the values of nrep
        for nrep in ${nrep_values[@]}; do
	    new_outdir=../../mol_${runid}/Spectrum_data/Spectrum_out/out_$nsample/rep_out_${ncycles}_${nrep}/
            mkdir -p $new_outdir

            # Measure the time taken to run the script
            start_time=$(date +%s)

            # Run the Representative Sampling script
            ../PROCESS/repre_sample_2D.py -n $nstruct -N $nstates -S $nsample -c $ncycles -j $nproc -J $nrep -w --intweights --verbose --outdir $outdir --pdfcomp KLdiv $filename 
            
            # Output time taken for Representative Sampling
            end_time=$(date +%s)
            time_taken=$((end_time - start_time))
            echo "Time taken for nsample=$nsample ncycles=$ncycles and nrep=$nrep: $time_taken seconds"

            # Create new output dir for this simulation
            echo "Moved files to $new_outdir"
            # Move all files and folders which are not *.out, *.sh, or $name* to this new dir 
            mv !(*.out|*.sh|$name*) $new_outdir
         done
    done
    
    echo -e "\nFinding Representative Sampling indicies files"
    # Collect all Representative Sampling indicies files
    indicies_dirs=()
    while IFS= read -r -d $'\0'; do
        indicies_dirs+=("$REPLY")
    done < <(find ../../mol_${runid}/Spectrum_data/Spectrum_out/out_$nsample/ -maxdepth 1 -type f -name "*.geoms.txt" -print0)
    
    # Print the number of indices files found
    echo "Number of indices files found: ${#indicies_dirs[@]}"

    for indicies_dir in "${indicies_dirs[@]}"; do
        echo -e "\nProcessing geoms file $indicies_dir"

        # Extract the filename from the path
        filename=$(basename -- "$indicies_dir")
        
        # Extract cycles and repetitions from the end of the filename
        ncycles=$(echo $filename | rev | cut -d'.' -f4 | rev)
        nrep=$(echo $filename | rev | cut -d'.' -f3 | rev)
        echo "Cycles: $ncycles, Repetitions: $nrep"
        
        dir2=../../mol_${runid}/Spectrum_data/Spectrum_in/annealing_n${nsample}_c${ncycles}_nr${nrep}/	
        mkdir -p $dir2
        if [ "$(ls -A $dir2)" ]; then
            rm -rf $dir2/*
        fi

        dir3=../../mol_${runid}/ORCA_in/annealing_n${nsample}_c${ncycles}_nr${nrep}/
        mkdir -p $dir3
        if [ "$(ls -A $dir3)" ]; then
            rm -rf $dir3/*
        fi

        dir4=../../mol_${runid}/ORCA_out/annealing_n${nsample}_c${ncycles}_nr${nrep}/
        mkdir -p $dir4
        if [ "$(ls -A $dir4)" ]; then
            rm -rf $dir4/*
        fi
	
        dir5=../../mol_$runid/ORCA_out/equidist_$nsample/
            mkdir -p $dir5
            if [ "$(ls -A $dir4)" ]; then
            rm -rf $dir5/*
        fi

    	dir6=../../mol_$runid/ORCA_in/equidist_$nsample/
    	mkdir -p $dir6
    	if [ "$(ls -A $dir4)" ]; then
        	rm -rf $dir6/*
    	fi

    	dir7=../../mol_$runid/Spectrum_data/Spectrum_in/equidist_$nsample/
    	mkdir -p $dir7
    	if [ "$(ls -A $dir4)" ]; then
    	    rm -rf $dir7/*
    	fi
	
        dir8=../../mol_$runid/Spectrum_data/Spectrum_out/equidist_$nsample
        mkdir -p $dir8
        if [ "$(ls -A $dir4)" ]; then
            rm -rf $dir8/*
        fi

        dir9=../../mol_$runid/Spectrum_data/Spectrum_in/equidist_$nsample
        mkdir -p $dir9
        if [ "$(ls -A $dir9)" ]; then
            rm -rf $dir9/*
        fi

        # Recalculating transition properties using Representative ensemble
	    echo "Recalculating using rep sample geometries"
        echo -e "\nRecreating ORCA input files at higher level of theory\n"
        echo "indicies dir: $indicies_dir"
        orca_in=../../mol_${runid}/ORCA_in/annealing_n${nsample}_c${ncycles}_nr${nrep}/
        orca_out=../../ORCA_out/annealing_n${nsample}_c${ncycles}_nr${nrep}/
        method=1
		
        # Extract Representative ensemble from indicies directory
	    awk '{print $1}' $indicies_dir > temp_file 
        ../LAUNCH/RecalcGeometries.sh ${name} $orca_in 1 0 ../../mol_${runid}/geoms.xyz ORCA 1 ${nproc} ../LAUNCH ${nstates} $rep_method temp_file
	
        # Relaunch ORCA calculations using new inputs
        echo -e "\nResubmitting rep sample geometries\n"
        orca_in=../../mol_${runid}/ORCA_in/annealing_n${nsample}_c${ncycles}_nr${nrep}/
        ../LAUNCH/slurm_run.sh /sw/apps/orca-5.0.3/orca-install/orca $orca_in $orca_out ORCA 1

        # Extract recalculated ORCA outputs
        echo -e "\nExtracting data using rep sample indicies\n"
        orca_out=../../mol_${runid}/ORCA_out/annealing_n${nsample}_c${ncycles}_nr${nrep}/
        ../PROCESS/ExtractStates.sh $name $nstates 1 $nstruct "grep_ORCAUV" "_output.log" ../PROCESS/ $orca_out ../../mol_${runid}/Spectrum_data/Spectrum_in/annealing_n${nsample}_c${ncycles}_nr${nrep}/ 0

        for sigma in ${sigmas[@]}; do

            echo "sigma is $sigma"
            outdir=../../mol_${runid}/Spectrum_data/Spectrum_out/out_$nsample/cycles_$ncycles/reps_$nrep/sigma_${sigma}/
            mkdir -p $outdir

            if [ "$(ls -A $outdir)" ];then
            rm -rf $outdir/*
            fi

            # Rebuild spectrum using Representative ensemble with recalculated transition properties
            outdir=../../mol_${runid}/Spectrum_data/Spectrum_out/out_$nsample/cycles_$ncycles/reps_$nrep/sigma_$sigma/
            filename=$(find ../../mol_${runid}/Spectrum_data/Spectrum_in/annealing_n${nsample}_c${ncycles}_nr${nrep}/ -type f -name "*.exc.txt")
            echo -e "\nRecalculating rep sample spectrum and outputting\n"
            ../PROCESS/CalcSpectrumV2.sh $filename $nsample $nstates $sigma 0.005 false false false $nproc $workdir $outdir $sigmaalg $verbose $conf 

        done

        # Plot spectra if required
        if [[ $plotting -eq 1 ]]; then
            python3 ../POSTPROCESS/postprocess.py ../../mol_${runid}/Spectrum_data/Spectrum_out/out_$nsample/ #cycles_$ncycles/reps_$nrep/sigma_${sigma}/
        fi
    done
done

echo "Spectrum build finished"

# Produce combined plot if required
if [[ $combined_plot -eq 1 ]]; then
    python3 ../POSTPROCESS/post.py ../../mol_${runid}/Spectrum_data/Spectrum_out/ ../../mol_${runid}/Spectrum_data/Spectrum_out/ $lines_per_plot 
fi
#python3 ../POSTPROCESS/post.py ../../mol_${runid}/Spectrum_data/Spectrum_out/ ../../mol_${runid}/Spectrum_data/Spectrum_out/ $lines_per_plot True







