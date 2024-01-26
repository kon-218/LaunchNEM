#!/bin/bash

shopt -s extglob

# Script for running full NEM workflow
# Structure of the workflow:
# 1) Pick geometries from the movie.xyz
# 2) Setup ORCA inputs
# 3) Run ORCA calculations
# 4) Parse ORCA outputs
# 5) Calculate spectra and Simulated Annealing

# check for previous runs 
existing_runids=$(ls -d ../../mol_* 2>/dev/null | grep -o '[0-9]\+' | sort -n)

# If there are no existing run IDs, set runid to 1
if [ -z "$existing_runids" ]; then
    runid=1
else
    # Get the highest existing run ID and add 1 to it
    runid=$(( $(echo "$existing_runids" | tail -n 1) + 1 ))
fi

mkdir -p ../../mol_${runid}/

# Create the directories
mkdir -p ../../mol_${runid}/ORCA_out/
mkdir -p ../../mol_${runid}/ORCA_in/
mkdir -p ../../mol_${runid}/Spectrum_data/Spectrum_in/
mkdir -p ../../mol_${runid}/Spectrum_data/Spectrum_out/

name="toluene"
nstruct_movie=100000
nstruct=1200
step=$nstruct_movie/$nstruct
nproc=28
input_file=../../movies/${name}_movie.xyz
orca_in=../../mol_${runid}/ORCA_in/
orca_out=../../mol_${runid}/ORCA_out/
random=1
nrep_split=5

# Available methods, indexed from 1
# TDDFT cc, ADC3, HF, Zindo HF3c
init_method=4
# TDDFT 6-3GLYP
rep_method=0

nsamples=(10) # 200)
sigmas=(0 0.03) #  0.035 0.04 0.045 0.05)
ncycles_values=(100 200 300 500)
nrep_values=(20 50)
nstates=1
#conf=0.95 # Comment out to not use error bars 
lines_per_plot=3
mine=4.8
maxe=2.5

# Ensure data output directories are clear

#find ../../mol/Spectrum_data/Spectrum_in/* -maxdepth 3 -type f -delete
#find ../../mol/Spectrum_data/Spectrum_out/* -maxdepth 3 -type f -delete

rm -rf ../../mol_${runid}/ORCA_out/*
rm -rf ../../mol_${runid}/ORCA_in/*
rm -rf ../../mol_${runid}/Spectrum_data/Spectrum_in/*
rm -rf ../../mol_${runid}/Spetrum_data/Spectrum_out/*

# Start LAUNCH 

# Pick Geometries from movie.xyz file
echo "Picking geometries from movie"
../LAUNCH/PickGeoms.sh ${input_file} ../../mol_${runid}/geoms.xyz $nstruct $random $step 980160
echo "Geometries successfully picked."
echo "Number of geometries: $nstruct"
echo -e "\n"

# Setup ORCA inputs
# "Usage: ./RecalcGeometries.sh name path imin imax movie program jobs nproc calcpath"
echo "Creating ORCA input files"
../LAUNCH/RecalcGeometries.sh ${name} $orca_in 1 0 ../../mol_${runid}/geoms.xyz ORCA 1 ${nproc} ../LAUNCH ${nstates} $init_method
echo -e "\n"

# # Run ORCA caluculations
# Creates name.output.logs in ORCA_out directory
echo "submitting ORCA calcs to SLURM" 
../LAUNCH/slurm_run.sh /sw/apps/orca-5.0.3/orca-install/orca $orca_in $orca_out ORCA $nrep_split
echo -e "Slurm_run finsihed\n"

# # Extract ORCA outputs
# "Usage: ./ExtractStates.sh name states istart imax grep_function filesuffix [indicies]"
# echo "Extracting data from ORCA outputs"

../PROCESS/ExtractStates.sh $name $nstates 1 $nstruct "grep_ORCAUV" "_output.log" ../PROCESS/ $orca_out ../../mol_${runid}/Spectrum_data/Spectrum_in/ 0
# echo -e "\n"


for nsample in ${nsamples[@]}; do
    echo "Running rep sample for $nsample"

    outdir=../../mol_${runid}/Spectrum_data/Spectrum_out/out_${nsample}/
    mkdir -p $outdir
    filename=$(find ../../mol_${runid}/Spectrum_data/Spectrum_in -maxdepth 1 -type f -name "*.exc.txt")


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
            ../PROCESS/repre_sample_2D.py -n $nstruct -N $nstates -S $nsample -c $ncycles -j $nproc -J $nrep -w --verbose --outdir $outdir --pdfcomp KLdiv $filename 
            end_time=$(date +%s)
            time_taken=$((end_time - start_time))
            echo "Time taken for ncycles=$ncycles and nrep=$nrep: $time_taken seconds"

            # create new output dir for this simulation
            # check it is empty
            # move all files and folders which are not *.out, *.sh, or $name* to this new dir 

            # Create new output dir for this simulation
            echo "moved files to $new_outdir"
            # Move all files and folders which are not *.out, *.sh, or $name* to this new dir 
            mv !(*.out|*.sh|$name*) $new_outdir
        done
    done

    # ../PROCESS/repre_sample_2D.py -n $nstruct -N $nstates -S $nsample -c $ncycles -j $nproc -J $njobrep -w --verbose --outdir $outdir --pdfcomp KLdiv $filename 

    dir2=../../mol_${runid}/Spectrum_data/Spectrum_in/annealing_$nsample/	
    mkdir -p $dir2
    if [ "$(ls -A $dir2)" ]; then
        rm -rf $dir2/*
    fi

    dir3=../../mol_${runid}/ORCA_in/annealing_${nsample}/
    mkdir -p $dir3
    if [ "$(ls -A $dir3)" ]; then
        rm -rf $dir3/*
    fi

    dir4=../../mol_${runid}/ORCA_out/annealing_$nsample/
    mkdir -p $dir4
    if [ "$(ls -A $dir4)" ]; then
        rm -rf $dir4/*
    fi
    
    # Recalc using rep sample geometries
    echo -e "\nRecreating ORCA input files at higher level of theory\n"
    indicies_dir=$(find ../../mol_${runid}/Spectrum_data/Spectrum_out/out_$nsample/ -maxdepth 1 -type f -name "*.geoms.txt")
    echo $indicies_dir
    orca_in=../../mol_${runid}/ORCA_in/annealing_$nsample
    orca_out=../../ORCA_out/annealing_$nsample/
    method=1
    ../LAUNCH/RecalcGeometries.sh ${name} $orca_in 1 0 ../../mol_${runid}/geoms.xyz ORCA 1 ${nproc} ../LAUNCH ${nstates} $rep_method $indicies_dir

    # Relaunch ORCA calculations using new inputs
    # Creates name.output.logs in ORCA_out directory
    echo -e "\nResubmitting rep sample geometries\n"
    orca_in=../../mol_${runid}/ORCA_in/annealing_$nsample/
    ../LAUNCH/slurm_run.sh /sw/apps/orca-5.0.3/orca-install/orca $orca_in $orca_out ORCA

    # Extract high res results
    echo -e "\nExtracting data using rep sample indicies\n"
    orca_out=../../mol_${runid}/ORCA_out/annealing_$nsample/
    ../PROCESS/ExtractStates.sh $name $nstates 1 $nstruct "grep_ORCAUV" "_output.log" ../PROCESS/ $orca_out ../../mol_${runid}/Spectrum_data/Spectrum_in/annealing_${nsample}/ 0

    #../PROCESS/ExtractStates.sh $name $nstates 1 $nstruct "grep_ORCAUV" "_output.log" ../PROCESS/ $orca_out ../../mol_${runid}/Spectrum_data/Spectrum_out/out_${nsample}/ 1

    for sigma in ${sigmas[@]}; do
	filename=$(find ../../mol_${runid}/Spectrum_data/Spectrum_in -maxdepth 1 -type f -name "*.exc.txt")

        echo "sigma is $sigma"
        outdir=../../mol_${runid}/Spectrum_data/Spectrum_out/out_$nsample/sigma_${sigma}/
        mkdir -p $outdir

        if [ "$(ls -A $outdir)" ];then
        rm -rf $outdir/*
        fi

        workdir=../PROCESS/
        echo "Building spectrum"
        sigmaalg=cv
        echo $filename $nstruct $nstates
        ../PROCESS/CalcSpectrumV2.sh $filename $nstruct $nstates 0.02 0.005 false false false $nproc $workdir $outdir $sigmaalg $conf

        echo "Specrtrum output ready"
        python3 ../POSTPROCESS/postprocess.py ../../mol_${runid}/Spectrum_data/Spectrum_out/

        # Recalc high res spectrum, final output
        outdir=../../mol_${runid}/Spectrum_data/Spectrum_out/out_$nsample/sigma_${sigma}/
        filename=$(find ../../mol_${runid}/Spectrum_data/Spectrum_in/annealing_${nsample}/ -type f -name "*.exc.txt")
        echo -e "\nRecalculating rep sample spectrum and outputting\n"
        ../PROCESS/CalcSpectrumV2.sh $filename $nsample $nstates $sigma 0.005 false false false $nproc $workdir $outdir $sigmaalg $conf 

        echo -e "\nOuput ready"

        python3 ../POSTPROCESS/postprocess.py ../../mol_${runid}/Spectrum_data/Spectrum_out/out_$nsample/sigma_${sigma}/
    done
    
    python3 ../POSTPROCESS/postprocess.py ../../mol_${runid}/Spectrum_data/Spectrum_out/out_$nsample/

done

echo "Spectrum build finished"
python3 ../POSTPROCESS/post.py ../../mol_${runid}/Spectrum_data/Spectrum_out/ ../../mol_${runid}/Spectrum_data/Spectrum_out/ $lines_per_plot True




