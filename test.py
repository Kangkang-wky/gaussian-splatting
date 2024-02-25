import numpy as np

C = np.array([[4, 0],[0, 1]]) # define covariance matrix

eigVal, eigVec = np.linalg.eig(C) # find eigenvalues and eigenvectors

a = np.sqrt(eigVal[0]) # half-major axis length
b = np.sqrt(eigVal[1]) # half-minor axis length

print(a)
print(b)
print(eigVal)

# ellipse  orientation  angle
theta = np.arctan(eigVec[1, 0] / eigVec[0, 0])  