#!/bin/bash
#SBATCH --account=PHYS030544 
#SBATCH --job-name=full
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=28
#SBATCH --mem=100GB
#SBATCH --time=03:00:00
#SBATCH --partition=teach_cpu
#SBATCH --error=%J.out 
#SBATCH --output=%J.out

# Load the module environment suitable for the job
module load apps/orca/5.0.3

which orca

#module list 

echo "running runscript"
# And finally run the job

./runscript.sh
#python3 ../POSTPROCESS/post.py ../../mol/Spectrum_data/Spectrum_out/ ../../mol/Spectrum_data/Spectrum_out/ 5
