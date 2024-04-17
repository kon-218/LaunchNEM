Files for running representative sampling for Nuclear ensemble method 

# scripts

Contains all of the scripts, split into 3 stages

LAUNCH - launch ORCA calculations from MD movie or wigner sampling 

PROCESS - calculate UV-vis spectra, perform representative sampling, extract ORCA calculation results

POSTPROCESS - plotting scripts for postprocessing data 

There is also a WORKFLOW folder containing
- a SLURM submission script with SBATCH settings
- a runscript which acts as a wrapper and calls the different LAUNCH and PROCESSSING scripts
- a config file, which intialises variables required for the script

Requirements:
- a "movie" of geometries, see the example movies for format details
- ORCA QC software
- Access to HPC (QC calculations are costly for personal machines)

Scripts from https://github.com/PHOTOX/photoxrepo, https://github.com/stepan-srsen/PyNEAppLES have been used in this repository

# mol 
The mol directory is initialised by the programme in the LaunchNEM directory, with seperate mol directories created for each seperate run. 
All of the spectrum data, ORCA files and geometry data is found here after the program has been run.
