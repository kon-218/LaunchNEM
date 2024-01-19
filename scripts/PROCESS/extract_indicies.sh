#!/bin/bash

echo $(pwd)
workdir=../PROCESS/
outdir=../../mol/Spectrum_data/Spectrum_out/

# The input .geoms file
input_file=$(find -type f -name "*.geoms.txt")
# echo $input_file
# The output file for the molecule indices
output_file="${outdir}indicies.txt"

# Make sure the output file is empty before we start
> "$output_file"

# Loop over each line in the input file
while IFS= read -r line
do
    # Extract the identifier from the line
    # This assumes that the identifier is the last element on the line and is a number
    identifier=$(echo "$line" | awk -F'[._]' '{print $(NF-2)}')
    #echo "$identifier $line"

    # Write the index to the output file
    echo "$identifier" >> "$output_file"
done < "$input_file"
