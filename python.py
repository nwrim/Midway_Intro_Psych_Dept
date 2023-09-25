import numpy as np

mat0 = np.arange(1, 16).reshape(5, 3, order='F')
mat1 = np.arange(1, 16).reshape(3, 5, order='F')

results = mat0 @ mat1

print(results)