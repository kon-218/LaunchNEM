#!/bin/bash

# This is a driver script which takes geometries from xyz movie and launches calculations.
# You can use PickGeoms.sh to filter out geometries before running this script.
# EXAMPLE: if you have 10 geometries, and you want to skip the first 3 of them
# and calculate the rest, set "imin=4" and "imax=0" (same as "imax=10" in this case)

# Check if the correct number of arguments are provided
if [ "$#" -lt 11 ]; then
    echo "Usage: ./RecalcGeometries.sh name path imin imax movie program jobs nproc calcpath nstates method (indicies)"
    exit 1
fi

##### SETUP - basic options ######################################
name=$1      # name of the job
path=$2     # path to the job
imin=$3             # first geometry, will skip (imin-1) geometries
imax=$4             # last geometry, positive integer or 0 for all geometries up to the end of file
movie=$5    # file with xyz geometries
program=$6      # one of GAUSS, MNDO, MOLPRO, ORCA, QCHEM, TERA
jobs=$7             # number of jobs to submit, calculations will be distributed accordingly
nproc=$8            # number of processors per job
calc_path=$9        # path to calc.sh file
                   # Some programs (e.g. QCHEM) are a bit trickier, you might need to modify $submit_path
nstates=${10}
method=${11}
#submit="qsub -V -q LOCALQ -pe shm $nproc " # comment this line if you do not want to submit jobs automatically
submit="sbatch --cpus-per-task=$nproc"
##### SETUP - rare options #######################################
indices=${12}           # file with indices (one per line) of geometries to recalculate instead from $imin to $imax
                   # leave empty for using all geometries from imin to imax
istep=1            # calculate every $istep-th geometry between $imin and $imax 
make_input="calc.$program.sh"  # script to make input files
submit_path="$program"         # script for launching a given program (GAUSS,TERA etc.)
version=                       # leave blank if you want the default version of a given program
                               # use script SetEnvironment.sh to determine available versions
##################################################################
# INITIALIZATION
if [[ ! -f $movie ]] || [[ ! -r $movie ]];then
   echo "ERROR: File \"$movie\" is not readable."
   exit 1
fi

natom=$(head -1 $movie | awk '{print $1}' )  # number of atoms
let natom2=natom+2

lines=`cat $movie | wc -l` 
ngeoms=`expr $lines / $natom2`

if [[ -n $indices ]]; then
   if [[ ! -f $indices ]] || [[ ! -r $indices ]]; then
      echo "ERROR: The file \"$indices\" is not readable."
      exit 1
   fi
   mapfile -t samples < $indices
   echo "Using geometries from file \"$movie\"."
   echo "Geometry indices loaded from file \"$indices\"."
else
   if [[ "$imax" -gt "$ngeoms" || $imin -gt "$ngeoms" ]];then
      echo "ERROR: Number of geometries ($ngeoms) is smaller than the requested number."
      echo "Change parameter \"imax\" or \"imin\"."
      exit 1
   fi
   if [[ $imax -eq 0 ]];then
      imax=$ngeoms
   fi
   samples=($(seq $imin $istep $imax))
   echo "Using geometries $imin to $imax from file \"$movie\"."
fi

let nsample=${#samples[@]}
echo "Processing $nsample samples and generating $jobs job(s)..."

if [[ $jobs -gt $nsample ]];then
   echo "WARNING: Number of jobs is bigger than number of samples."
   jobs=$nsample
fi

rname=$path/r.$name.${samples[0]}

# determine number of G09 calculations per job
let injob=nsample/jobs
# determine the remainder and distribute it evenly between jobs
let remainder=nsample-injob*jobs

if [[ -e $path/$rname.1 ]];then
   echo "WARNING: it appears that you have already calculated geometry number $imin."
   echo "Should I proceed anyway? [yes/no]"
fi

rm -f $rname.*
##################################################################
# CREATE INPUTS
j=1
for i in "${samples[@]}"
do
   let offset=i*natom2
   head -$offset $movie | tail -$natom2 > temp.xyz # TODO: use variable instead of temp file
   $calc_path/$make_input temp.xyz $path/$name.$i.com $nproc $nstates $method

   #DH warning, we are assuming here, that the second parameter is nproc
   echo "$submit_path $name.$i.com $version " >> $rname.$j

# Distribute calculations evenly between jobs for queue
   let curr_job++
   if [[ $remainder -le 0 ]];then
      let ncalc=injob
   else
      let ncalc=injob+1 
   fi

   if [[ $curr_job -eq $ncalc ]] && [[ $j -lt $jobs ]]; then
      let j++
      let remainder--
      let curr_job=0
   fi

   let i++

done
rm -f temp.xyz
echo "setup finished"
##################################################################
# SUBMIT JOBS
j=1
if [[ ! -z $submit ]];then
   while [[ $j -le $jobs ]]
   do
      $submit -V $rname.$j
      let j++
   done
fi
