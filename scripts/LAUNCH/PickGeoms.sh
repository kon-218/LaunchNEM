#!/bin/bash

#-----------------------------------------------------------------------
# This script takes a subset of geometries from a movie.xyz
# and puts them all into one file.
# DEPENDENCIES: Expects MyIRandom utility to be in your $PATH.

# You can either pick the geometries at random, or by using fixed offset.

# If you have a huge constant number of geometries, it is useful to pick them randomly.
# If you use the same random seed and same movie.xyz, you can generate the same sequence of geometries,
# which is useful e.g. if you later want more samples for your spectra. 

# If you have smaller number of geometries or if you want to start some calculations
# while the ABIN simulation is still running, it is better to use fixed offset i.e.
# take every i'th geometry, where 'i' is determined by parameter "step".
# This should be a prime number.

# #########SETUP###########
# movie=../../mol/movie.xyz    # Input xyz file.
# output=../../mol/geoms.xyz   # Output xyz file.
# nsample=0          # Number of samples. Greater than 0 or 0 for maximum number of samples (0 only with fixed offset)
# random=0                # 0 - pick geometries using fixed offset
#                         # 1 - pick geometries randomly
# step=1                 # fixed offset, every step-th geometry is taken
# seed=980160             # random seed, if negative, it is based on current time
# #cut="./cut_sphere -u 5 -v 3 -va 3" # cut command
# #########################

##########Setup###########
# Check if the correct number of arguments are provided
if [ "$#" -lt 6 ]; then
    echo "Usage: ./PickGeoms.sh movie output nsample random step seed [cut]"
    exit 1
fi

# Assign each argument to a variable
movie=$1
output=$2
nsample=$3
random=$4
step=$5
seed=$6

# Check if the cut argument is provided
if [ "$#" -ge 7 ]; then
    cut=$7
fi

#--Input SANITY CHECK---------------------------
if [[ ! -e $movie ]];then
   echo "ERROR: File $movie does not exist."
   exit 1
fi
natom=$(head -1 $movie)                # Number of atoms.

if [[ $random -ne 0 ]] && [[ $random -ne 1 ]];then
   echo "ERROR: parameter random must be 0 or 1."
   exit 1
fi

if [[ $random -eq 1 ]] && [[ $nsample -eq 0 ]];then
   echo "ERROR: nsample can be 0 only with fixed offset (random=0)."
   exit 1
fi

if [[ $random -eq 0 ]] && [[ $step -le 0 ]];then
   echo "ERROR: parameter step must be positive integer."
   exit 1
fi

if [[ $random -eq 1 ]] && [[ $seed -lt 0 ]];then
   echo "WARNING: Seed is negative, it will be determined randomly based on current time."
fi
# ----------------------------------

# Determine, how many geometries we have.
let natom2=natom+2
lines=$(cat $movie | wc -l)
geoms=`expr $lines / $natom2`
let geoms3=geoms/10

if [[ $nsample -gt $geoms ]];then
   echo "ERROR: Number of geometries ($geoms) is smaller than number of samples."
   echo "Change parameter \"nsample\"."
   exit 1
fi

if [[ $nsample -ne 0 ]] && [[ $random -eq 0 ]] && [[ $(expr $step \* $nsample ) -gt $geoms ]];then
   echo "ERROR: Small number of geometries ($geoms)."
   echo "Please, decrease the parameter \"step\"."
   exit 1
fi

if [[ $geoms3 -lt $nsample ]] && [[ $random -eq 1 ]];then
   echo "ERROR: Number of geometries ($geoms) is too small for this number of samples."
   echo "It is not meaningful to pick geometries at random. Exiting..."
   exit 1
fi

#Generate random numbers
if [[ $random -eq 1 ]];then
   for ((i=1;i<=$nsample;i++)); do
      echo $((RANDOM % geoms + 1))  # +1 to make it 1-based
   done > irans.dat
fi

if [[ $nsample -eq 0 ]];then
   let nsample=geoms/step
fi

if [[ -e $output ]];then
   echo "WARNING: file $output already exists."
   echo "Do you want to rewrite it? [yes/no]"
   
   rm $output
   
fi

rm -f $output


# Picking geometries
offset=0
for ((i=1;i<=nsample;i++)) {

   if [[ $random -eq 1 ]];then
      nrand=`head -$i irans.dat |tail -1`
      offset=$(expr $nrand \* $natom2)
   elif [[ $random -eq 0 ]];then
      if [[ $i -eq 1 ]];then
         offset=0
      else
         let offset=offset+natom2*step
      fi
   fi

   if [[ -z $cut ]];then
      head -$offset $movie | tail -$natom2 >> $output
   else
      head -$offset $movie | tail -$natom2 | $cut 
      cat cut_qm.xyz >> $output
   fi
   #echo -n "$i "
}
echo ""
echo "Finished successfully."
