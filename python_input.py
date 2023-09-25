import argparse
import numpy as np

parser = argparse.ArgumentParser()
parser.add_argument('i', type=int, help='input integer')
args = parser.parse_args()

i = args.i

mat0 = np.arange(i, i + 15).reshape(5, 3, order='F')
mat1 = np.arange(i, i + 15).reshape(3, 5, order='F')

results = mat0 @ mat1

np.savetxt(f'python_input_results/python_input_results_{i}.txt', results, fmt='%i')