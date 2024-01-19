#!/bin/bash
#SBATCH --account=PHYS030544 
#SBATCH --job-name=full
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=28
#SBATCH --mem-per-cpu=3500MB
#SBATCH --time=0:10:00
#SBATCH --partition=teach_cpu
#SBATCH --error=%J.err 
#SBATCH --output=%J.out

# Load the module environment suitable for the job
module load apps/orca/5.0.3

which orca

#module list 

echo "running runscript"

# Ensure data output directories are clear

#find ../../mol/Spectrum_data/Spectrum_in/* -maxdepth 2 -type f -delete
#find ../../mol/Spectrum_data/Spectrum_out/* -maxdepth 2 -type f -delete

#rm -rf ../../mol/ORCA_out/*
rm -rf ../../mol/ORCA_in/*

# And finally run the job

#./runscript.sh

