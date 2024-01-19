code2/PyNEAppLES/calc_spectrum_v2.py#!/bin/bash

# Driver script for spectra simulation using the nuclear ensemble approach.
# One can use histogramming or gaussian and/or lorentzian broadening.
# It works both for UV/VIS spectra and photoionization spectra.
# This is a wrapper around the python code with basic features only.

# REQUIRED FILES:
# calc_spectrum.py

if [ "$#" -lt 13 ]; then
    echo "Usage: ./PickGeoms.sh movie output nsample random step seed [cut]"
    exit 1
fi

##### SETUP FOR SPECTRA MODELLING ###################################
inputname=$1	# the input file with excitation energies and possibly transition dipole moments
inputfile=$2      # name of the input file
samples=$3	# number of geometries
states=$4	# number of excited states (ground state does not count)
gauss=$5	# Gaussian broadening parameter in eV, set to 0 for automatic setting
de=$6	# Energy bin for histograms or resolution for broadened spectra.
ioniz=$7	# Set to "true" for ionization spectra (i.e. no transition dipole moments)
##### SETUP FOR REPRESENTATIVE SAMPLING #############################
subset=$8	# number of most representative molecules to pick for the reduced spectrum, set to 0 or comment for not using this method
cycles=$9	# number of cycles for geometries reduction. The larger number, the better result.
ncores=$10	# number of cores used for parallel execution for spectrum reduction. Only valid with positive subset parameter.
jobs_per_core=${11}	# number of reduction jobs per one core. Only valid with positive subset parameter.
workdir=${12}	# working directory for the spectrum calculation
# Check if Lorentzian broadening parameter is provided
outdir=${13}	# output directory for the spectrum calculation

if [ -n "$14" ]; then
    lorentz=${14}
fi
#####################################################################

echo $(pwd)
echo "workdir"

nlines=$(wc -l < $inputfile)
nlines2=$((samples * states))
nlines3=$((2 * samples * states))
if [[ $nlines != $nlines2 && $ioniz = "true" ]] || [[ $nlines != $nlines3 && $ioniz != "true" ]]; then
   echo "WARNING: # of lines in the input does not correspond to the ioniz option and # of samples and states."
   echo "# of lines: $nlines, # of samples: $samples, # of states: $states, ioniz=$ioniz"
fi

options=" --de $de "
if [[ ! -z $gauss ]];then
   options=" -s $gauss "$options
fi
if [[ ! -z $lorentz ]];then
   options=" -t $lorentz "$options
fi
if [[ ! -z $subset ]] && (( $subset > 0 ));then
   options=" -S $subset "$options
   if [[ ! -z $cycles ]] && (( $cycles > 0 ));then
      options=" -c $cycles "$options
   fi
   if [[ ! -z $ncores ]] && (( $ncores > 0 ));then
      options=" -j $ncores "$options
   fi
   if [[ ! -z $jobs_per_core ]] && (( $jobs_per_core > 0 ));then
      options=" -J $jobs_per_core "$options
   fi
fi
if [[ $ioniz = "true" ]];then
   options=" --notrans "$options
fi

echo $workdir
command="${workdir}calc_spectrum.py -n $samples $options $inputname $inputfile $outdir"
echo "executing: $command"
eval $command

