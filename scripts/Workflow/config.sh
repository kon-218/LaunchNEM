# MOLECULE SPECIFIC CONFIGURATION
name="toluene"
nstruct_movie=100000
nstruct=1200
step=$((nstruct_movie/$nstruct))
nproc=28
random=1

# Define paths
base_dir="../../mol_${runid}"
spectrum_data_dir="${base_dir}/Spectrum_data"
orca_in_dir="${base_dir}/ORCA_in"
orca_out_dir="${base_dir}/ORCA_out"

# QM calc settings
# 0: Restricted Kohn-Sham method with CAM-B3LYP functional and 6-31G basis set
# 1: Restricted Kohn-Sham method with CAM-B3LYP functional and cc-pVDZ basis set
# 2: Restricted Hartree-Fock method with STEOM-CCSD and aug-cc-pVDZ basis set
# 3: Restricted Hartree-Fock method with aug-cc-pVTZ and def2-SVP/C basis sets
# 4: Hartree-Fock method with 3c basis set
# 5: Restricted Hartree-Fock method with aug-cc-pVDZ basis set and RI-MP2 optimization
# 6: Coupled Cluster method with single, double and perturbative triple excitations (CCSD(T)) and cc-PVTZ basis set

init_method=0
rep_method=1
single_point=0
equidistant=0
nstates=1
nrep_split=6
sigmaalg=cv

# REP SAMPLE SETTINGS
nsamples=(5) # 200)
sigmas=(0) #  0.035 0.04 0.045 0.05)
ncycles_values=(50 100 150 200 250 300 400 500)
nrep_values=(28 56)

#POSTPROCESSING SETTINGS
#conf=0.95 # Comment out to not use error bars 
lines_per_plot=5