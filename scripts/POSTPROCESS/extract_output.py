import glob
import re
import pandas as pd 
import seaborn as sns 
import matplotlib.pyplot as plt
import sys 
import numpy as np

dir = sys.argv[1]

# Get a list of all .out files in the directory
files = glob.glob(f'{dir}*.out')

info = {
    'nsamples': [],
    'ncycles': [],
    'nrep': [],
    'time_taken': [],
    'min_divergence': []
}

nsamples_pattern = re.compile(r'nsample=(\d+)')
ncycles_pattern = re.compile(r'ncycles=(\d+)')
nrep_pattern = re.compile(r'nrep=(\d+)')
time_taken_pattern = re.compile(r': (\d+) seconds')
min_divergence_pattern = re.compile(r'minimum divergence: ([\d.]+)')

# Process each file
for filename in files:
    with open(filename, 'r') as file:
        lines = file.readlines()

    for line in lines:
        nsamples_match = nsamples_pattern.search(line)
        ncycles_match = ncycles_pattern.search(line)
        nrep_match = nrep_pattern.search(line)
        time_taken_match = time_taken_pattern.search(line)
        min_divergence_match = min_divergence_pattern.search(line)
        
        if nsamples_match and ncycles_match and nrep_match and time_taken_match:
            info['nsamples'].append(int(nsamples_match.group(1)))
            info['ncycles'].append(int(ncycles_match.group(1)))
            info['nrep'].append(int(nrep_match.group(1)))
            info['time_taken'].append(int(time_taken_match.group(1)))
        
        if min_divergence_match:
            info['min_divergence'].append(float(min_divergence_match.group(1)))

df = pd.DataFrame(info)

fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
sc = ax.scatter(df['nsamples'], df['ncycles'], df['time_taken'], c=df['nrep'], cmap='viridis')

ax.set_xlabel('Number of Samples')
ax.set_ylabel('Number of Cycles')
ax.set_zlabel('Time taken (s)')

plt.colorbar(sc)
plt.show()