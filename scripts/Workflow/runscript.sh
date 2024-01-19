#!/bin/bash

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
method=0
anneal=1
nsamples=(150 200)
ncycles=500
nstates=1

# Pick Geometries from movie.xyz file
echo "Picking geometries from movie"
#../LAUNCH/PickGeoms.sh ${input_file} ../../mol/geoms.xyz $nstruct $random $step 980160
echo "Geometries successfully picked."
echo "Number of geometries: $nstruct"
echo -e "\n"

# Setup ORCA inputs
# "Usage: ./RecalcGeometries.sh name path imin imax movie program jobs nproc calcpath"
echo "Creating ORCA input files"
#../LAUNCH/RecalcGeometries.sh ${name} $orca_in 1 0 ../../mol/geoms.xyz ORCA 1 ${nproc} ../LAUNCH ${nstates} $method
echo -e "\n"

# # Run ORCA caluculations
# Creates name.output.logs in ORCA_out directory
echo "submitting ORCA calcs to SLURM" 
#../LAUNCH/slurm_run.sh /sw/apps/orca-5.0.3/orca-install/orca $orca_in $orca_out ORCA
echo -e "Slurm_run finsihed\n"

# # Extract ORCA outputs
# "Usage: ./ExtractStates.sh name states istart imax grep_function filesuffix [indicies]"
# echo "Extracting data from ORCA outputs"
# ../PROCESS/ExtractStates.sh $name $nstates 1 $nstruct "grep_ORCAUV" "_output.log" ../PROCESS/ $orca_out ../../mol/Spectrum_data/Spectrum_in/ 0
# echo -e "\n"

filename=$(find ../../mol/Spectrum_data/Spectrum_in -maxdepth 1 -type f -name "*.exc.txt")
# echo $filename
# outdir=../../mol/Spectrum_data/Spectrum_out/
# workdir=../PROCESS/
# echo "Building spectrum"
# sigmaalg="cv"

# #if [[ anneal -eq 0 ]];then
# 	#../PROCESS/CalcSpectrum.sh $name $filename $nstruct $nstates 0.02 0.01 false 0 400 $nproc 1 $workdir $outdir 0.05
# #elif [[ anneal -eq 1 ]];then
# 	#../PROCESS/CalcSpectrum.sh $name $filename $nstruct $nstates 0.025 0.01 false $nsample ncycles $nproc 1 $workdir $outdir 0.05
# #fi
# echo $filename $nstruct $nstates
# ../PROCESS/CalcSpectrumV2.sh $filename $nstruct $nstates 0.02 0.005 false false false 1 $workdir $outdir $sigmaalg 

# echo "Specrtrum output ready"
# python3 ../POSTPROCESS/postprocess.py ../../mol/Spectrum_data/Spectrum_out/ absspec..n100000.nm.cross.dat


for nsample in ${nsamples[@]}; do
	echo "Running rep sample for $nsample"
	outdir=../../mol/Spectrum_data/Spectrum_out/out_${nsample}/
	../PROCESS/repre_sample_2D.py -n $nstruct -N $nstates -S $nsample -c 1 -j 1 -J 1 -w --verbose --outdir $outdir --pdfcomp KLdiv $filename > ../../mol/Spectrum_data/Spectrum_out/output.txt 


	if [[ anneal -eq 1 ]];then
		# Extract rep sample geometry indicies
		echo -e "Extracting rep. sample indicies\n"	
		#../PROCESS/extract_indicies.sh 
		mkdir -p ../../mol/Spectrum_data/Spectrum_out/out_$nsample/
		mkdir -p ../../mol/Spectrum_data/Spectrum_in/annealing_$nsample/
		mkdir -p ../../mol/ORCA_in/annealing_$nsample/
		mkdir -p ../../mol/ORCA_out/annealing_$nsample/

		# Recalc using rep sample geometries
		echo -e "\nRecreating ORCA input files at higher level of theory\n"
		indicies_dir=$(find ../../mol/Spectrum_data/Spectrum_out/out_$nsample/ -maxdepth 1 -type f -name "*.geoms.txt")
		echo $indicies_dir
		#mkdir -p $indicies_dir
		orca_in=../../mol/ORCA_in/annealing_$nsample
		orca_out=../../ORCA_out/annealing_$nsample/
		method=1
		../LAUNCH/RecalcGeometries.sh ${name} $orca_in 1 0 ../../mol/geoms.xyz ORCA 1 ${nproc} ../LAUNCH ${nstates} $method $indicies_dir
		
		# Relaunch ORCA calculations using new inputs
		# Creates name.output.logs in ORCA_out directory
		echo -e "\nResubmitting rep sample geometries\n"
		orca_in=../../mol/ORCA_in/annealing_$nsamples/
		#../LAUNCH/slurm_run.sh /sw/apps/orca-5.0.3/orca-install/orca $orca_in $orca_out ORCA
		
		# Extract high res results
		orca_out=../../mol/ORCA_out/annealing_$nsample/
		echo -e "\nExtracting data using rep sample indicies\n"
		../PROCESS/ExtractStates.sh $name $nstates 1 $nstruct "grep_ORCAUV" "_output.log" ../PROCESS/ $orca_out ../../mol/Spectrum_data/Spectrum_in/annealing/ 0

		# Recalc high res spectrum, final output
		outdir=../../mol/Spectrum_data/Spectrum_out/annealing_$nsample/
		filename=$(find ../../mol/Spectrum_data/Spectrum_in/annealing_${nsample}/ -type f -name "*.exc.txt")
		echo -e "\nRecalculating rep sample spectrum and outputting\n"
		#../PROCESS/CalcSpectrum.sh $name $filename $nsample $nstates 0.1 0.01 false 0 400 $nproc 1 $workdir $outdir 0.05
		echo $filename
		echo "filename"
		../PROCESS/CalcSpectrumV2.sh $filename $nsample $nstates 0.035 0.005 false false false 1 $workdir $outdir $sigmaalg 

		echo -e "\nOuput ready"
		python3 ../POSTPROCESS/postprocess.py ../../mol/Spectrum_data/Spectrum_out/annealing_$nsample/ absspec..n100000.nm.cross.dat
	fi
done

echo "Spectrum build finished"
