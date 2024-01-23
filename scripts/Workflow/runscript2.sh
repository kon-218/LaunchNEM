#!/bin/bash

shopt -s extglob

# Script for running full NEM workflow
# Structure of the workflow:
# 1) Pick geometries from the movie.xyz
# 2) Setup ORCA inputs
# 3) Run ORCA calculations
# 4) Parse ORCA outputs
# 5) Calculate spectra and Simulated Annealing

name="acrolien"
nstruct_movie=100000
nstruct=1200
step=$nstruct_movie/$nstruct
nproc=28
input_file=../../mol/${name}_movie.xyz
orca_in=../../mol/ORCA_in/
orca_out=../../mol/ORCA_out/
random=1

# Available methods, indexed from 1
# TDDFT cc, ADC3, HF, Zindo HF3c
init_method=4
# TDDFT 6-3GLYP
rep_method=0

anneal=1
nsamples=(150) # 200)
sigmas=(0.01 0.03 0.05 0.07 0.1) #  0.035 0.04 0.045 0.05)
ncycles=1000
njobrep=28
nstates=1
conf=0.01
lines_per_plot=4

# Pick Geometries from movie.xyz file
echo "Picking geometries from movie"
#../LAUNCH/PickGeoms.sh ${input_file} ../../mol/geoms.xyz $nstruct $random $step 980160
echo "Geometries successfully picked."
echo "Number of geometries: $nstruct"
echo -e "\n"

# Setup ORCA inputs
# "Usage: ./RecalcGeometries.sh name path imin imax movie program jobs nproc calcpath"
echo "Creating ORCA input files"
#../LAUNCH/RecalcGeometries.sh ${name} $orca_in 1 0 ../../mol/geoms.xyz ORCA 1 ${nproc} ../LAUNCH ${nstates} $init_method
echo -e "\n"

# # Run ORCA caluculations
# Creates name.output.logs in ORCA_out directory
echo "submitting ORCA calcs to SLURM" 
#../LAUNCH/slurm_run.sh /sw/apps/orca-5.0.3/orca-install/orca $orca_in $orca_out ORCA
echo -e "Slurm_run finsihed\n"

# # Extract ORCA outputs
# "Usage: ./ExtractStates.sh name states istart imax grep_function filesuffix [indicies]"
# echo "Extracting data from ORCA outputs"
../PROCESS/ExtractStates.sh $name $nstates 1 $nstruct "grep_ORCAUV" "_output.log" ../PROCESS/ $orca_out ../../mol/Spectrum_data/Spectrum_in/ 0
# echo -e "\n"


for nsample in ${nsamples[@]}; do
    echo "Running rep sample for $nsample"

    outdir=../../mol/Spectrum_data/Spectrum_out/out_${nsample}/
    mkdir -p $outdir
    filename=$(find ../../mol/Spectrum_data/Spectrum_in -maxdepth 1 -type f -name "*.exc.txt")


    if [ "$(ls -A $outdir)" ]; then
            rm -rf $outdir/*
    fi

    ../PROCESS/repre_sample_2D.py -n $nstruct -N $nstates -S $nsample -c $ncycles -j $nproc -J $njobrep -w --verbose --outdir $outdir --pdfcomp KLdiv $filename 

    dir2=../../mol/Spectrum_data/Spectrum_in/annealing_$nsample/	
    mkdir -p $dir2
    if [ "$(ls -A $dir2)" ]; then
        rm -rf $dir2/*
    fi

    dir3=../../mol/ORCA_in/annealing_${nsample}/
    mkdir -p $dir3
    if [ "$(ls -A $dir3)" ]; then
        rm -rf $dir3/*
    fi

    dir4=../../mol/ORCA_out/annealing_$nsample/
    mkdir -p $dir4
    if [ "$(ls -A $dir4)" ]; then
        rm -rf $dir4/*
    fi
    
    # Recalc using rep sample geometries
    echo -e "\nRecreating ORCA input files at higher level of theory\n"
    indicies_dir=$(find ../../mol/Spectrum_data/Spectrum_out/out_$nsample/ -maxdepth 1 -type f -name "*.geoms.txt")
    echo $indicies_dir
    orca_in=../../mol/ORCA_in/annealing_$nsample
    orca_out=../../../ORCA_out/annealing_$nsample/
    method=1
    ../LAUNCH/RecalcGeometries.sh ${name} $orca_in 1 0 ../../mol/geoms.xyz ORCA 1 ${nproc} ../LAUNCH ${nstates} $rep_method $indicies_dir

    # Relaunch ORCA calculations using new inputs
    # Creates name.output.logs in ORCA_out directory
    echo -e "\nResubmitting rep sample geometries\n"
    orca_in=../../mol/ORCA_in/annealing_$nsample/
    ../LAUNCH/slurm_run.sh /sw/apps/orca-5.0.3/orca-install/orca $orca_in $orca_out ORCA

    # Extract high res results
    echo -e "\nExtracting data using rep sample indicies\n"
    orca_out=../../mol/ORCA_out/annealing_$nsample/
    ../PROCESS/ExtractStates.sh $name $nstates 1 $nstruct "grep_ORCAUV" "_output.log" ../PROCESS/ $orca_out ../../mol/Spectrum_data/Spectrum_in/annealing_${nsample}/ 0

    for sigma in ${sigmas[@]}; do
	    filename=$(find ../../mol/Spectrum_data/Spectrum_in -maxdepth 1 -type f -name "*.exc.txt")

        echo "sigma is $sigma"
        outdir=../../mol/Spectrum_data/Spectrum_out/out_$nsample/sigma_${sigma}/
        mkdir -p $outdir

        if [ "$(ls -A $outdir)" ];then
        rm -rf $outdir/*
        fi

        workdir=../PROCESS/
        echo "Building spectrum"
        sigmaalg=cv
        echo $filename $nstruct $nstates
        ../PROCESS/CalcSpectrumV2.sh $filename $nstruct $nstates $sigma 0.005 false false false $nproc $workdir $outdir $sigmaalg $conf

        echo "Specrtrum output ready"
        python3 ../POSTPROCESS/postprocess.py ../../mol/Spectrum_data/Spectrum_out/

        # Recalc high res spectrum, final output
        outdir=../../mol/Spectrum_data/Spectrum_out/out_$nsample/sigma_${sigma}/
        filename=$(find ../../mol/Spectrum_data/Spectrum_in/annealing_${nsample}/ -type f -name "*.exc.txt")
        echo -e "\nRecalculating rep sample spectrum and outputting\n"
        echo "filename"
        ../PROCESS/CalcSpectrumV2.sh $filename $nsample $nstates $sigma 0.005 false false false 1 $workdir $outdir $sigmaalg $conf 

        echo -e "\nOuput ready"

        python3 ../POSTPROCESS/postprocess.py ../../mol/Spectrum_data/Spectrum_out/out_$nsample/sigma_${sigma}/
    done
    
    python3 ../POSTPROCESS/postprocess.py ../../mol/Spectrum_data/Spectrum_out/out_$nsample/

    # create new output dir for this simulation
    # check it is empty
    # move all files and folders which are not *.out, *.sh, or $name* to this new dir 

    # Create new output dir for this simulation
    new_outdir=../../mol/Spectrum_data/Spectrum_out/out_$nsample/rep_sample_out/
    mkdir -p $new_outdir
    # Move all files and folders which are not *.out, *.sh, or $name* to this new dir 
    mv !(*.out|*.sh|$name*) $new_outdir

done

echo "Spectrum build finished"
python3 ../POSTPROCESS/post.py ../../mol/Spectrum_data/Spectrum_out/ ../../mol/Spectrum_data/Spectrum_out/ $lines_per_plot


