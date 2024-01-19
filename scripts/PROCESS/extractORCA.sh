#!/bin/bash
# Function definitions for extracting data from ORCA output files.
# Not tested yet.

function checkORCA {
if [[ $( grep "ORCA TERMINATED NORMALLY" $1 ) ]];then
   return 0

else
   echo "Terminated error"
   return 1
fi
}

function grep_ORCAUV {
   local in=$1
   local numstates=$3
   local out=$2
   local anneal=$4
   
   local nstate4
   let nstate4=numstates+4
   #echo $(pwd)

   checkORCA $in
   if [[ "$?" -ne "0" ]];then
      return 1
   fi
  
   if [[ $anneal -eq 1 ]];then
      grep -A$nstate4 "ABSORPTION SPECTRUM VIA TRANSITION ELECTRIC DIPOLE MOMENTS"  $in | tail -$numstates | awk -v filename="$in" '{print $2*0.000123981; print $6,$7,$8; print filename}' >> $out
   elif [[ $anneal -eq 0 ]];then
      grep -A$nstate4 "ABSORPTION SPECTRUM VIA TRANSITION ELECTRIC DIPOLE MOMENTS"  $in | tail -$numstates | awk  '{print $2*0.000123981; print $6,$7,$8}' >> $out
   fi
} 

