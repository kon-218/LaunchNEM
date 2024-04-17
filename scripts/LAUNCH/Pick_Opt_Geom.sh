#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -lt 2 ]; then
    echo "Usage: ./PickGeoms.sh movie output"
    exit 1
fi

# Assign each argument to a variable
movie=$1
output=$2

# Check if the movie file exists
if [[ ! -e $movie ]];then
   echo "ERROR: File $movie does not exist."
   exit 1
fi

# Get the number of atoms from the first line of the movie file
natom=$(head -1 $movie)

# Calculate the number of lines for one geometry
let natom2=natom+2

# Extract the first geometry and write it to the output file
head -$natom2 $movie > $output

echo "Finished successfully."
