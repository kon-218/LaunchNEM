import matplotlib.pyplot as plt
from matplotlib import colormaps
import glob
import os
import numpy as np
import itertools
import sys
import datetime

name = "Acrolein"

# Define a function that rounds a datetime object to the nearest couple of minutes
def round_time(dt, round_to):
    seconds = (dt - dt.min).seconds
    rounding = (seconds+round_to/2) // round_to * round_to
    return dt + datetime.timedelta(0,rounding-seconds,-dt.microsecond)

def get_timestamp(filename):
    split_filename = filename.split('.')
    print(split_filename)
    if len(split_filename) < 5:  # Check if the filename has enough elements
        return None  # Return a default value if the filename doesn't have enough elements
    timestamp = split_filename[5] 
    try:
        print(timestamp)
        dt = datetime.datetime.strptime(timestamp, '%Y-%m-%d_%H-%M-%S')
        return round_time(dt, 2*60)  # Round to the nearest couple of minutes
    except ValueError:
        return None  # Return a default value if the timestamp can't be parsed

# The second argument will be 'dir'
directory = sys.argv[1]

# The third argument will be 'outdir'
#outdir = sys.argv[2]

outdir = ""

# Define the directory to search
# directory = '../../mol/Spectrum_data/Spectrum_out'

# Define a list of line s
line_styles = itertools.cycle(['--', '-.', ':'])

# Find all .ev.cross.dat files in the directory and its subdirectories
files = glob.glob(os.path.join(directory, '**', '*.ev.cross.dat'), recursive=True)
print(files)

# Sort files by nsample
files.sort(key=lambda x: int(os.path.basename(x).split('.')[2][1:]))

# Define a list of colors
#colors = itertools.cycle(['b', 'g', 'r', 'c', 'm', 'y', 'k'])
N = len(files)
# Get the colormap
colourmap = colormaps.get_cmap('viridis')
colors = (colourmap(i/N) for i in range(N))

nlines_per_plot = int(sys.argv[2])
comp_plot = sys.argv[3].lower() == 'true'

# Create a new figure
plt.figure()

print(os.getcwd())

max_samples = 0
max_file = None
exp_file = None

for file in files:
    # Load the data from the file
    data = np.loadtxt(file)

    # Extract nsample from the filename
    filename = os.path.basename(file)
    nsample = int(filename.split('.')[2][1:])  # Assumes the format is always 'n'
        
    if filename.startswith('exp.'):
        exp_file = file
    elif nsample > max_samples:
        max_samples = nsample
        max_file = file

if exp_file is not None:
    max_file = exp_file
    max_samples = "exp"

print(max_samples)

max_data = np.loadtxt(max_file)
color=next(colors)
plt.plot(max_data[:, 0], max_data[:, 1], label=max_samples, color=color)

# Group files by timestamp if comp_plot is True
if comp_plot:
    # Group files by timestamp
    files_grouped_by_timestamp = {}
    for file in files:
        timestamp = get_timestamp(os.path.basename(file))
        if timestamp not in files_grouped_by_timestamp:
            files_grouped_by_timestamp[timestamp] = []
        files_grouped_by_timestamp[timestamp].append(file)
        # Flatten the list of files
        files = [file for group in files_grouped_by_timestamp.values() for file in group]
        print(files_grouped_by_timestamp)


# Initialize a counter for the number of lines plotted on the current graph
lines_plotted = 1

if comp_plot:
    # Loop over the groups of files with the same timestamp
    for timestamp, group in files_grouped_by_timestamp.items():
        # Create a new figure
        plt.figure()
        
        # Plot the 'exp' data if it exists
        if max_data is not None:
            plt.plot(max_data[:, 0], max_data[:, 1], label='exp', color='black')

        # Loop over the files in the group
        for file in group:
            if file == max_file:
                continue

            # If we've already plotted nlines_per_plot lines on the current graph, create a new graph
            if lines_plotted % nlines_per_plot == 0:
                line_styles = itertools.cycle(['--', '-.', ':'])
                colors = (colourmap(i/N) for i in range(N))
                color = next(colors)
                plt.figure()
                if 'max_data' in locals():
                    plt.plot(max_data[:, 0], max_data[:, 1], color="black" , label=max_samples)
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
            sigma = float('.'.join(filename.split('.')[3:5])[1:])  # Assumes the format is always 's'
            

            # Check if sigma is 0 and assign label accordingly
            if sigma == 0:
                label = "sigma:cv,n:"+str(nsample)
            else:
                label = "sigma:"+str(sigma)+",n:"+str(nsample)

            if data.shape[1] > 2:
                # Plot the data with error bars
                plt.fill_between(data[:, 0], data[:, 1] - data[:, 2], data[:, 1] + data[:, 2],color=color, alpha=0.2)

            # Plot the data with nsample as the label and the next line style in the cycle
            plt.plot(data[:, 0], data[:, 1], label=label, linestyle=next(line_styles),color=color)

            color=next(colors)

            # Increment the counter
            lines_plotted += 1

            # If we've plotted nlines_per_plot lines on the current graph, save it and reset the counter
            if lines_plotted % nlines_per_plot == 0:
                # Add a legend
                plt.legend(title=f'{name} rep sample')

                # Save the figure
                plt.savefig(f'{outdir}combined_plot_{lines_plotted // nlines_per_plot}.png')

        # If there are less than nlines_per_plot lines on the last graph, save it
        if lines_plotted % nlines_per_plot != 0:
            # Add a legend
            plt.legend(title=f'{name} rep sample')

            # Save the figure
            plt.savefig(f'{outdir}combined_plot_{lines_plotted // nlines_per_plot + 1}.png')
else:
    # Loop over the files
    for file in files:
        if file == max_file:
            continue
        # If we've already plotted 4 lines on the current graph, create a new graph
        if lines_plotted % nlines_per_plot == 0:
            line_styles = itertools.cycle(['--', '-.', ':'])
            colors = (colourmap(i/N) for i in range(N))
            color = next(colors)
            plt.figure()
            plt.plot(max_data[:, 0], max_data[:, 1], color=color, label=max_samples)
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
        sigma = float('.'.join(filename.split('.')[3:5])[1:])  # Assumes the format is always 's'
        print(filename.split('.'))

        # Check if sigma is 0 and assign label accordingly
        if sigma == 0:
            label = "sigma:cv, n:"+str(nsample)
        else:
            label = "sigma:"+str(sigma)+", n:"+str(nsample)

        color=next(colors)

        if data.shape[1] > 2:
            # Plot the data with error bars
            plt.fill_between(data[:, 0], data[:, 1] - data[:, 2], data[:, 1] + data[:, 2],color=color, alpha=0.2)

        # Plot the data with nsample as the label and the next line style in the cycle
        plt.plot(data[:, 0], data[:, 1], label=label, linestyle=next(line_styles),color=color)

        # Increment the counter
        lines_plotted += 1

        # If we've plotted 4 lines on the current graph, save it and reset the counter
        if lines_plotted % nlines_per_plot == 0:
            # Add a legend
            plt.legend(title=f'{name} rep sample')

            # Save the figure
            plt.savefig(f'{outdir}combined_plot_{lines_plotted // nlines_per_plot}.png')

    # If there are less than 4 lines on the last graph, save it
    if lines_plotted % nlines_per_plot != 0:
        # Add a legend
        plt.legend(title=f'{name} rep sample')

        # Save the figure
        plt.savefig(f'{outdir}combined_plot_{lines_plotted // 4 + 1}.png')



