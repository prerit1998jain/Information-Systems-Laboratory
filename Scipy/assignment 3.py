# Matrix functions using scipy

import scipy
from scipy import linalg
import numpy as np

a=np.array([[1,8,-9,7,5],
           [0,1,0,4,4],
           [0,0,1,2,5],
           [0,0,0,1,-5],
           [0,0,0,0,1]])

print("Determinant: ")
print(scipy.linalg.det(a))

print("Inverse: ")
print(linalg.inv(a))

lam,evec=linalg.eig(a)
print("Eigen Pairs: ")
print("Eigen Values: ")
print(lam.real)

print("Corresponding Eigen Vectors: ")
print(np.around(evec,decimals=2))

print("Transpose: ")
print(a.transpose())
