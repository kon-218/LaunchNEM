#!/bin/bash
#SBATCH --account=PHYS030544 
#SBATCH --job-name=full
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=28
#SBATCH --mem=100GB
#SBATCH --time=0:10:00
#SBATCH --partition=test
#SBATCH --error=%J.out 
#SBATCH --output=%J.out

# Load the module environment suitable for the job
module load apps/orca/5.0.3

which orca

#module list 

echo "running runscript"
# And finally run the job

./runscript.sh
