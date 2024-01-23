Files for running representative sampling for Nuclear ensemble method 

# scripts

Contains all of the scripts, split into 3 stages

LAUNCH - launch ORCA calculations from MD movie or wigner sampling 

PROCESS - create UV-vis spectra, perform representative sampling, extract ORCA calculation results

POSTPROCESS - plotting scripts for postprocessing data 

There is also a Workflow folder containing
- a SLURM submission script with SBATCH settings
- a runscript which acts as a wrapper and calls the different LAUNCH and PROCESSSING scripts

The majority of variables are initialised in the runscript.

Scripts from https://github.com/PHOTOX/photoxrepo, https://github.com/stepan-srsen/PyNEAppLES and https://github.com/crcollins/molml have been used in this repository

# mol 
Directory for calculation outputs, subdirectories are initialised by the runscript
