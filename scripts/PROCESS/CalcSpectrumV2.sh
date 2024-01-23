#!/bin/bash

# Driver script for spectra simulation using the nuclear ensemble approach.
# One can use histogramming or gaussian and/or lorentzian broadening.
# It works both for UV/VIS spectra and photoionization spectra.
# This is a wrapper around the python code with basic features only.

# REQUIRED FILES:
# calc_spectrum_v2.py

##### SETUP #########################################################
input=$1	# the input file with excitation energies and possibly transition dipole moments
samples=$2	# number of geometries
states=$3	# number of excited states
		# (ground state does not count)
# TODO: istart=1	# Starting index of processed geometries
# TODO: imax=1000	# Last index of processed geometries
# TODO: indices=	# file with indices of geometries to use. Leave empty for using all geometries from istart to imax
gauss=$4		# Gaussian broadening standard deviation in eV, 0 for automatic setting, negative value to turn off
#lorentz=0.1	# Uncomment for Lorentzian broadening parameter in eV
de=$5	# Energy bin for histograms or resolution for broadened spectra.
decompose=$6	# Turns on/off decomposition of the spectrum into participating excited states (adds one column per each state to the output file)
normalize=$7	# Normalizes spectra maxima to one when true.
ioniz=$8	# Set to "true" for ionization spectra (i.e. no transition dipole moments)
ncores=$9	# number of cores used for parallel execution of computationally intensive parts such as error bars calculation
#####################################################################
# other parameters
workdir=${10} #../PROCESS/	# working directory for the spectrum calculation
outdir=${11} #../../mol/Spectrum_data/Spectrum_out/	# output directory for the spectrum calculation
verbose=true
sigmaalg=${12} 
ebars=${13}

nlines=$(wc -l < $input)
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
if [[ ! -z $ncores ]] && (( $ncores > 0 ));then
   options=" -j $ncores "$options
fi
if [[ $decompose = "true" ]];then
   options=" -D "$options
fi
if [[ $normalize = "true" ]];then
   options=" --normalize "$options
fi
if [[ $ioniz = "true" ]];then
   options=" --notrans "$options
fi
if [[ $verbose = "true" ]];then
   options=" --verbose "$options
fi

command="python ${workdir}calc_spectrum_v2.py -n $samples -N $states -e $ebars --mine 2 --maxe 5 --sigmaalg $sigmaalg $options $input $outdir"
#command="python calc_spectrum_v2.py -n $samples -N $states -e $ebars --sigmaalg cv --onesigma $options $input"
echo "executing: $command"
eval $command
