import matplotlib.pyplot as plt
from matplotlib import colormaps
import glob
import os
import numpy as np
import itertools
import sys

# The first argument will be 'dir'
directory = sys.argv[1]

# The second argument will be 'outdir'
outdir = sys.argv[2]

num_lines = sys.argv[3]

# Define the directory to search
#directory = '../../mol/Spectrum_data/Spectrum_out'

# Define a list of line s
line_styles = itertools.cycle(['--', '-.', ':'])

# Find all .ev.cross.dat files in the directory and its subdirectories
files = glob.glob(os.path.join(directory, '**', '*.ev.cross.dat'), recursive=True)

# Sort files by nsample
files.sort(key=lambda x: int(os.path.basename(x).split('.')[2][1:]))

# Define a list of colors
#colors = itertools.cycle(['b', 'g', 'r', 'c', 'm', 'y', 'k'])
N = len(files)
# Get the colormap
colourmap = colormaps.get_cmap('viridis')
colors = (colourmap(i/N) for i in range(N))

# Create a new figure
plt.figure()

max_samples = 0
max_file = None

for file in files:
    # Load the data from the file
    data = np.loadtxt(file)

    # If this file has more samples, update max_samples and max_file
    if data.shape[0] > max_samples:
        max_samples = data.shape[0]
        max_file = file # After the loop, plot the data from the file with the most samples
        # Extract nsample from the filename
        max_nsample_filename = os.path.basename(file)
        max_nsample = max_nsample_filename.split('.')[2][1:]  # Assumes the format is always 'n'

max_data = np.loadtxt(max_file)
color=next(colors)
plt.plot(max_data[:, 0], max_data[:, 1], label=max_nsample, color=color)

# Initialize a counter for the number of lines plotted on the current graph
lines_plotted = 1

# Loop over the files
for file in files:
    if file == max_file:
        continue
    # If we've already plotted num_lines lines on the current graph, create a new graph
    if lines_plotted % num_lines == 0:
        line_styles = itertools.cycle(['--', '-.', ':'])
        colors = (colourmap(i/N) for i in range(N))
        color = next(colors)
        plt.figure()
        plt.plot(max_data[:, 0], max_data[:, 1], color=color, label=max_nsample)
        lines_plotted += 1

    # Load the data from the file
    data = np.loadtxt(file)
    
    # Determine the x-values where y is non-zero
    non_zero_x = data[data[:, 1] != 0, 0]

    # Set the limits of the x-axis
    plt.xlim(non_zero_x.min(), non_zero_x.max())
    
    # Extract nsample from the filename
    filename = os.path.basename(file)
    nsample = filename.split('.')[2][1:]  # Assumes the format is always 'n'
    
    color=next(colors)

    if data.shape[1] > 2:
        # Plot the data with error bars
        plt.fill_between(data[:, 0], data[:, 1] - data[:, 2], data[:, 1] + data[:, 2],color=color, alpha=0.2)

    # Plot the data with nsample as the label and the next line style in the cycle
    plt.plot(data[:, 0], data[:, 1], label=nsample, linestyle=next(line_styles),color=color)

    # Increment the counter
    lines_plotted += 1

    # If we've plotted num_lines lines on the current graph, save it and reset the counter
    if lines_plotted % num_lines == 0:
        # Add a legend
        plt.legend(title='nsample')

        # Save the figure
        plt.savefig(f'{outdir}combined_plot_{lines_plotted // num_lines}.png')

# If there are less than num_lines lines on the last graph, save it
if lines_plotted % num_lines != 0:
    # Add a legend
    plt.legend(title='nsample')

    # Save the figure
    plt.savefig(f'{outdir}combined_plot_{lines_plotted // num_lines + 1}.png')




