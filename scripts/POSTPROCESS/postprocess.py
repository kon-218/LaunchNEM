import matplotlib.pyplot as plt
import numpy as np
import sys
import glob

# Get the output directory from the command line arguments
workdir= sys.argv[1]

# Find all .dat files in the directory
data_files = glob.glob(workdir + '*.dat')

# Loop over the data files
for data_file in data_files:
    print(data_file)

    # Load the data
    data = np.loadtxt(data_file)

    x1 = 50
    x2 = 1000

    # Set the limits of the y-axis
    #y1 = 0  # replace with your actual lower limit
    #y2 = np.max(data[:, 1])*1  # replace with your actual upper limit

    # Plot the data
    plt.figure()  # Create a new figure for each plot
    plt.plot(data[:, 0], data[:, 1])
    #plt.xlim(x1, x2)
    #plt.ylim(y1, y2)
    plt.title(data_file)  # Set the title to the data file name
    # save figure 
    plt.savefig(data_file+'.png')
