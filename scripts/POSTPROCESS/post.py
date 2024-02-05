import matplotlib.pyplot as plt
from matplotlib import colormaps
import glob
import os
import numpy as np
import itertools
import sys
import datetime

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
outdir = sys.argv[2]

#outdir = ""

# Define the directory to search
# directory = '../../mol/Spectrum_data/Spectrum_out'

# Define a list of line s
line_styles = itertools.cycle(['-'])
units=sys.argv[5]

# Find all .ev.cross.dat files in the directory and its subdirectories
files = glob.glob(os.path.join(directory, '**', f'*.{units}.cross.dat'), recursive=True)
print(files)

# Sort files by nsample
files.sort(key=lambda x: int(os.path.basename(x).split('.')[2][1:]))

# Define a list of colors
#colors = itertools.cycle(['b', 'g', 'r', 'c', 'm', 'y', 'k'])
N = 15
# Get the colormap
colourmap = colormaps.get_cmap('viridis')
colors = (colourmap(i/N*3+0.15) for i in range(N))

nlines_per_plot = int(sys.argv[3])
comp_plot = sys.argv[4].lower() == 'true'
name=sys.argv[6]
try:
    xlim_min,xlim_max = sys.argv[7].split(',')
    xlim_min = float(xlim_min)
    xlim_max = float(xlim_max)
except:
    xlim_max = None
    xlim_min = None

nsample_list = [int(n) for n in sys.argv[8].split(',')]

# Create a new figure
plt.figure()
plt.ylabel(r"$\sigma$ (cm$^{2}$)(molecule$^{-1}$)",fontsize=12)
plt.xlabel(f"Wavelength ({units})", fontsize=12)
plt.xlim(xlim_min,xlim_max)
# Increase the size of the text on the figure
# Increase the size of the text on the figure
plt.rcParams['font.size'] = 12
plt.tick_params(axis='both', which='major', labelsize=12)
#plt.rcParams['axes.offset_text.y'] = 14
#print(plt.rcParams.keys())

# plt.rcParams['font.size'] = 14
# plt.rcParams['axes.labelsize'] = 14
# plt.rcParams['xtick.labelsize'] = 14
# plt.rcParams['ytick.labelsize'] = 14

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
    max_samples = "Experiment"

print(max_samples)

max_data = np.loadtxt(max_file)
color=next(colors)
plt.plot(max_data[:, 0], max_data[:, 1], label=max_samples, color="purple")

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
        plt.ylabel(r"$\sigma$ (cm$^{2}$)(molecule$^{-1}$)")
        plt.xlabel(f"Wavelength ({units})")
        
        # Plot the 'exp' data if it exists
        if max_data is not None:
            plt.plot(max_data[:, 0], max_data[:, 1], label='Experiment', color='black')

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
                plt.ylabel(r"$\sigma$ (cm$^{2}$)(molecule$^{-1}$)")
                plt.xlabel(f"Energy ({units})")
                if 'max_data' in locals():
                    plt.plot(max_data[:, 0], max_data[:, 1], color="purple" , label=max_samples)
                lines_plotted += 1

            # Load the data from the file
            data = np.loadtxt(file)
            
            # Determine the x-values where y is non-zero
            non_zero_x = data[data[:, 1] != 0, 0]

            # Get the current limits
            current_xlim = plt.xlim()

            # # Set the limits of the x-axis only if the new range is larger
            # if non_zero_x.max() - non_zero_x.min() > current_xlim[1] - current_xlim[0]:
            #     plt.xlim(non_zero_x.min(), non_zero_x.max())
            
            #plt.xlim(xlim_min,xlim_max)
            
            # Extract nsample from the filename
            filename = os.path.basename(file)
            nsample = filename.split('.')[2][1:]  # Assumes the format is always 'n'
            sigma = float('.'.join(filename.split('.')[3:5])[1:])  # Assumes the format is always 's'
            
            if int(nsample) > 500:
                label = "Exploratory sample"
                color="violet"
            elif int(nsample) == 1:
                #assume single point 
                label = "Opt. Geom."
                color="blue"
            elif int(nsample) == 0:
                #full sample high res qm
                label = "Full sample"
                color="orange"
            else:
                label = "n:"+str(nsample)

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
            plt.ylabel(r"$\sigma$ (cm$^{2}$)(molecule$^{-1}$)")
            plt.xlabel(f"Energy ({units})")
            plt.plot(max_data[:, 0], max_data[:, 1], color=color, label=max_samples)
            lines_plotted += 1

        # Load the data from the file
        data = np.loadtxt(file)
        
        # Determine the x-values where y is non-zero
        non_zero_x = data[data[:, 1] != 0, 0]

        # # Set the limits of the x-axis
        ##plt.xlim(non_zero_x.min(), non_zero_x.max())
        #plt.xlim(xlim_min,xlim_max)
        #plt.ylim(0,5e-16)
        # Extract nsample from the filename
        filename = os.path.basename(file)
        nsample = filename.split('.')[2][1:]  # Assumes the format is always 'n'
        sigma = float('.'.join(filename.split('.')[3:5])[1:])  # Assumes the format is always 's'
        print(filename.split('.'))
        print(nsample_list)
        # Check if nsample is in nsample_list

        if int(nsample) not in nsample_list:
            continue  # Skip this file if its nsample is not in nsample_list
        
        # Check if sigma is 0 and assign label accordingly
        if int(nsample) > 500:
            label = "Exploratory sample"
            color="sienna"
        elif int(nsample) == 1:
            #assume single point 
            label = "Opt. Geom."
            color="navy"
        elif int(nsample) == 0:
            #full sample high res qm
            label = "Full sample"
            color="darkgreen"
        else:
            label = "n:"+str(nsample)
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
            # Get the legend handles and labels
            handles, labels = plt.gca().get_legend_handles_labels()

            # Create a dictionary to store the labels and their corresponding handles
            legend_dict = dict(zip(labels, handles))

            # Sort the labels so that the ones starting with 'Exp' come first
            labels.sort(key=lambda x: not x.startswith('Exp'))

            # Create the legend with the sorted labels and their corresponding handles
            plt.legend([legend_dict[label] for label in labels], labels,title=f'{name} rep. sample')
            # # Add a legend
            # plt.legend(title=f'{name} rep sample')

            # Save the figure
            plt.savefig(f'{outdir}combined_plot_{lines_plotted // nlines_per_plot}.png')

    # If there are less than 4 lines on the last graph, save it
    if lines_plotted % nlines_per_plot != 0:
        # Get the legend handles and labels
        handles, labels = plt.gca().get_legend_handles_labels()     
        # Create a dictionary to store the labels and their corresponding handles
        legend_dict = dict(zip(labels, handles))

        # Sort the labels so that the ones starting with 'Exp' come first
        labels.sort(key=lambda x: not x.startswith('Exp'))

        # Create the legend with the sorted labels and their corresponding handles
        plt.legend([legend_dict[label] for label in labels], labels,title=f'{name} rep. sample')
        # # Add a legend
        # plt.legend(title=f'{name} rep sample')

        # Save the figure
        plt.savefig(f'{outdir}combined_plot_{lines_plotted // 4 + 1}.png')




