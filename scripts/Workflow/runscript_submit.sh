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

# And finally run the job

./runscript.sh

