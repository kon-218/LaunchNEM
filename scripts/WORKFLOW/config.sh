#config.sh

#####################  GENERAL CONFIGURATION #############################

name="toluene" # Name of the molecule
nstruct_movie=100000 # Number of structures in the movie
nstruct=1200 # Number of structures to sample for exploratory calculations
input_file=../../movies/${name}_movie.xyz # Path to movie file
nproc=28 # Number of processors to use for runscript
nstates=1

single_point=0
equidistant=1
# Additional sampling options - 0 to disable

#################### REPRESENTATIVE SAMPLING SETTINGS ####################

init_method=1
rep_method=0
# Methods for exploratory and optimized ensemble ORCA calculations
# Options:
    # 0 B3LYP/6-311*G (TDDFT)
    # otherwise ZINDO/S (semi-empirical)
# Note:New methods can be added to calc.ORCA.sh  
#      A fast method should be used for the initial calculation

# Lists are used for multiple sampling iterations (Bash lists in the form (a b c ...))
# If only one value is desired use a list with one element

nsamples=(10) # Reduced ensemble size
ncycles_values=(1500) # Number of Simulated Annealing cycles
nrep_values=(28) # Number of replicas for the Simulated Annealing

#####################  SPECTRUM SETTINGS  #################################

sigmas=(0) 
# sigmas - Sigma values for the Gaussian kernel
# Options:
    # 0 - Automatic determination
    # otherwise specify a value

sigmaalg=cv
# sigmaalg - Algorithm to determine the sigma value for the Gaussian kernel
# Options:
    # cv - Cross-validation
    # silverman - Silverman's rule of thumb


#conf=0.95 # Comment out for no error bars 
# conf - Confidence level for error bars

#mine=4.8 # Comment out for automatic determination
#maxe=2.5
# Energy range for spectrum generation 

################### POSTPROCESSING SETTINGS ###############################

exploratory_plot=1
single_point_plot=1
reduced_spectrum_plot=1
combined_plot=1
lines_per_plot=5
# Plotting options, set to 0 to disable
# Options:
    # exploratory_plot - Plot the exploratory spectrum
    # single_point_plot - Plot the single point data
    # reduced_spectrum_plot - Plot the final spectrum
    # combined_plot - Plot all data on one graph
        # lines_per_plot - Limit the number of lines to plot on combined output
# Note: The spectrum data is available in the mol/Spectrum_data/Spectrum_out/ directory

###############  ADVANCED SETTINGS (only change if needed) ################

verbose=True

# PickGeoms settings
random=1
step=$((nstruct_movie/$nstruct))
seed=980160

nrep_split=2

## Set the run ID
# check for existing output folders 
existing_runids=$(ls -d ../../mol_* 2>/dev/null | grep -o '[0-9]\+' | sort -n)

# If there are no existing run IDs, set runid to 1
if [ -z "$existing_runids" ]; then
    runid=1
else
    # Otherwise get the highest existing run ID and add 1 to it
    runid=$(( $(echo "$existing_runids" | tail -n 1) + 1 ))
fi

## Check number of available processors
# Get the number of processors
num_processors=$(nproc)

# Check if nproc is not larger than the number of processors
if [ "$nproc" -gt "$num_processors" ]; then
    echo "Error: nproc is larger than the number of available processors."
    exit 1
fi

orca_in=../../mol_${runid}/ORCA_in/
orca_out=../../mol_${runid}/ORCA_out/


