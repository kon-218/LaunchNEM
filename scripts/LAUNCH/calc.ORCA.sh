#!/bin/bash

# Script for creating ORCA inputs.
# It is called from script RecalcGeoms.sh
# Three arguments are passed to this script:
#     input geometry, name of the input file and number of processors

geometry=$1
output=$2
nproc=$3
nstates=$4
method=$5              # number of processors
natom=$(head -1 $1 | awk '{print $1}')
nproc=1
# Modify to your needs

charge=0             # molecular charge
spin=1               # molecular spin

# Check the value of the method variable
if [ "$method" -eq 0 ]; then
    QC_method="! B3LYP 6-311G*"
else
    QC_method="! HF-3c"
fi

echo "$QC_method" >> $output  
echo "!TightSCF" >> $output
echo "%scf" >> $output
echo " MaxIter 500" >> $output
echo "end" >> $output

echo "%tddft" >> $output
echo " NRoots $nstates" >> $output
echo "end" >> $output

# Number of processors is determined automatically
if [[ "nproc" -gt 1 ]];then
   echo "!PAL$nproc" >> $output
fi

# DO NOT MODIFY BELOW

# Use timestep from the movies as a comment for future reference.
head -2 $geometry | tail -1 | awk '{print "#",$0}' >> $output

# And finally, print geometry
echo "* xyz $charge $spin" >> $output

tail -$natom $geometry >> $output

echo '*' >> $output

