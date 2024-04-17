import glob
import re
import pandas as pd 
import seaborn as sns 
import matplotlib.pyplot as plt
import sys 
import numpy as np

# A script for extracting the output lines of a rep. sampling workflow

dir = sys.argv[1]

# Get a list of all .out files in the directory
files = glob.glob('*.out')
print(files)

# Dictionary of variables we want to find
info = {
    'nsamples': [],
    'ncycles': [],
    'nrep': [],
    'time_taken': [],
    'min_divergence': []
}

# Regex expression for each variable
nsamples_pattern = re.compile(r'nsample=(\d+)')
ncycles_pattern = re.compile(r'ncycles=(\d+)')
nrep_pattern = re.compile(r'nrep=(\d+)')
time_taken_pattern = re.compile(r': (\d+) seconds')
min_divergence_pattern = re.compile(r'minimum divergence: ([\d.]+)')

# Pattern to match the start of a new run
new_run_pattern = re.compile(r'^running rep sample')

# Process each file
for filename in files:
    with open(filename, 'r') as file:
        lines = file.readlines()

    nsamples_match = None
    min_divergence_match = None

    for line in lines:
        if new_run_pattern.match(line):
            # Start of a new run, reset matches
            nsamples_match = None
            min_divergence_match = None

        if not nsamples_match:
            nsamples_match = nsamples_pattern.search(line)
        if not min_divergence_match:
            min_divergence_match = min_divergence_pattern.search(line)
        
        if nsamples_match and min_divergence_match:
            # Extract other data
            ncycles_match = ncycles_pattern.search(line)
            nrep_match = nrep_pattern.search(line)
            time_taken_match = time_taken_pattern.search(line)
            
            if ncycles_match and nrep_match and time_taken_match:
                info['nsamples'].append(int(nsamples_match.group(1)))
                info['ncycles'].append(int(ncycles_match.group(1)))
                info['nrep'].append(int(nrep_match.group(1)))
                info['time_taken'].append(int(time_taken_match.group(1)))
                info['min_divergence'].append(float(min_divergence_match.group(1)))
            
            # Reset matches for next run
            nsamples_match = None
            min_divergence_match = None


df = pd.DataFrame(info)
print(df)

# example plotting

# fig = plt.figure()
# ax = fig.add_subplot(111, projection='3d')
# sc = ax.scatter(df['nsamples'], df['ncycles'], df['time_taken'], c=df['min_divergence'], cmap='Greens_r', s=10)

# ax.set_xlabel('Number of Samples')
# ax.set_ylabel('Number of Cycles')
# ax.set_zlabel('Time taken (s)')

# plt.colorbar(sc)
# plt.show()