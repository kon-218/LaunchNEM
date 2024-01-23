from sklearn.kernel_ridge import KernelRidge
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error
import numpy as np
import os
import re
from molml.features import CoulombMatrix, BagOfBonds
import subprocess

import glob

def geometry_to_features(geometry):
    lines = geometry.split('\n')
    atoms = [line.split()[2] for line in lines if len(line.split()) >= 5]
    coordinates = [list(map(float, line.split()[3:])) for line in lines if len(line.split()) >= 5]
    return atoms, coordinates

def process_file(file_path, X, Y_energy, Y_tdm, data):
    with open(file_path, 'r') as f:
        lines = f.readlines()
    for i in range(0, len(lines), 3):
        energy = float(lines[i].strip())
        transition_dipole_moment = list(map(float, lines[i+1].strip().split()))
        file_path = lines[i+2].strip()
        with open(file_path, 'r') as f:
            content = f.read()
            geometry = re.findall(r'\* xyz 0 1(.*?)\*', content, re.DOTALL)[0].strip()
        X.append(geometry_to_features(geometry))
        Y_energy.append(energy)
        Y_tdm.append(transition_dipole_moment)
        data[file_path] = {'energy': energy, 'transition_dipole_moment': transition_dipole_moment, 'geometry': geometry_to_features(geometry)}
    # Stack Y_energy and Y_tdm horizontally
    Y_energy = np.array(Y_energy)
    Y_tdm = np.array(Y_tdm)
    Y = np.hstack((Y_energy.reshape(-1, 1), Y_tdm))
    return X, Y, data

def print_data(data):
    for file_path, info in data.items():
        print(f'File: {file_path}\nEnergy: {info["energy"]}\nTransition Dipole Moment: {info["transition_dipole_moment"]}\nGeometry:\n{info["geometry"]}\n')

def get_features(X, X_sample, feature_method):
    if feature_method == "coloumb":
        features = CoulombMatrix()
    elif feature_method == "bag":
        features = BagOfBonds()
    features.fit([x for x in X if x not in X_sample])
    return features.transform(X), features.transform(X_sample), features.transform([x for x in X if x not in X_sample])

def train_and_predict(X_sample_trans, Y_sample, X_unknown_trans):
    model = KernelRidge(alpha=1.0)
    model.fit(X_sample_trans, Y_sample)
    return model.predict(X_unknown_trans)

def write_predictions(pred_energy, pred_tdm):
    with open('predictions.txt', 'w') as f:
        for energy, tdm in zip(pred_energy, pred_tdm):
            f.write(str(energy) + '\n')
            f.write(' '.join(map(str, tdm)) + '\n')

def run_commands():
    subprocess.call('../PROCESS/CalcSpectrumV2.sh ./predictions.txt 1198 1 0.03 0.005 false false false 1 ../PROCESS/ ./ cv 0.01', shell=True)
    subprocess.call('python3 ../POSTPROCESS/postprocess.py ""', shell=True)

X, Y, Y_energy, Y_tdm, data = [], [], [], [], {}
X, Y, data = process_file('../../mol/Spectrum_data/Spectrum_in/acrolien_a.1-1200.n1200.s1.exc.txt', X, Y_energy, Y_tdm, data)
print(data)

X_sample, Y_sample, Y_sample_energy, Y_sample_tdm, data_sample = [], [], [], [], {}
X_sample, Y_sample, data_sample = process_file('../../mol/Spectrum_data/Spectrum_out/out_50/acrolien.1-1200.n50.s1.exc.txt', X_sample, Y_sample_energy, Y_sample_tdm, data_sample)
print(data_sample)

# get features
X_trans, X_sample_trans, X_unknown_trans = get_features(X, X_sample, "coloumb")

print(len(X_unknown_trans))

predictions = train_and_predict(X_sample_trans, Y_sample, X_unknown_trans)
pred_energy = predictions[:,0]
pred_tdm = predictions[:,1:]

write_predictions(predictions[:,0], predictions[:,1:])

run_commands()