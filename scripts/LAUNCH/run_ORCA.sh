!#bin/bash
#SBATCH -J $job_name   # Job name
#SBATCH -o orca_calculations_%j.out   # Output file
#SBATCH -e orca_calculations_%j.err   # Error file
#SBATCH -p test   # Partition/queue name
#SBATCH -account=PHYS030544
#SBATCH -n 1   # Number of tasks (adjust based on your needs)
#SBATCH --cpus-per-task=1   # Number of CPU cores per task
#SBATCH --mem=2G   # Memory per CPU core

orca_path=$1
input_dir=$2
log_dir=$3

"$orca_path" $input_dir > $log_dir &

