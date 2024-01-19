#!/bin/bash
#SBATCH -J $job_name   # Job name
#SBATCH -p teach_cpu   # Partition/queue name
#SBATCH -account=PHYS030544
#SBATCH -n 1   # Number of tasks (adjust based on your needs)
#SBATCH --cpus-per-task=1   # Number of CPU cores per task
#SBATCH --mem=100G   # Memory per CPU core

# Load the module environment suitable for the job
module load apps/orca/5.0.3

which orca

#module list

echo "running runscript"

# Check if the correct number of arguments are provided
if [ "$#" -ne 4 ]; then
    echo "Usage: ./slurm_run.sh orca_path input_dir output_dir job_name"
    exit 1
fi

echo "the working directory is $(pwd)"

# Assign each argument to a variable
orca_path=$1
input_dir=$2
output_dir=$3
job_name=$4

# Ensure the output directory exists
mkdir -p "$output_dir"

# Change to the input directory
cd "$input_dir" || exit

# Get the total number of files
total_files=$(ls *.com | wc -l)
echo "$total_files total files"
# Initialize a counter
counter=0

# Determine the number of submissions based on the total number of files
if ((total_files > 700)); then
    submissions=4
elif ((total_files > 400)); then
    submissions=2
else
    submissions=1
fi

echo "splitting over $submissions submissions"

# Calculate the number of files per submission
files_per_submission=$((total_files / submissions))
echo "Working directory slurm run $(pwd)"

# Loop over ORCA input files and submit jobs
for input_file in *.com; do
    # Extract the file name without extension
    base_name=$(basename "$input_file" .com)

    # Run ORCA job for each input file
    "$orca_path" $input_file > "$output_dir${base_name}_output.log" &

    # Increment the counter
    ((counter++))

    # If the counter has reached the number of files per submission, wait for all jobs to finish
    if ((counter % files_per_submission == 0)); then
        echo "Waiting for $files_per_submission submissions to complete"
	wait
    fi
done

# Wait for any remaining ORCA jobs to finish
echo "Waiting for last submission"
wait

echo "All ORCA jobs have completed."
