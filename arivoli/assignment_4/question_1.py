import yaml
import numpy as np


def read_matrix_from_yaml(file_path):
    with open(file_path, "r") as file:
        matrix_data = yaml.safe_load(file)
    return matrix_data


def diagonalize_matrix(matrix):
    eigenvalues, eigenvectors = np.linalg.eig(matrix)
    D = np.diag(eigenvalues)
    U = eigenvectors
    return U, D


def compute_eigenvalues(matrix):
    eigenvalues = np.linalg.eigvals(matrix)
    return eigenvalues


file_path = "matrix_data.yaml"
matrix_data = read_matrix_from_yaml(file_path)
matrix = np.array(matrix_data["matrix"])
eigenvalues = compute_eigenvalues(matrix)
print("Eigenvalues of the matrix:", eigenvalues)
U, D = diagonalize_matrix(matrix)
print("Unitary matrix U:")
print(U)
print("\nDiagonal matrix D:")
print(D)


# Given matrix A (already read from YAML)
A = matrix

# Spectral decomposition
eigenvalues, eigenvectors = np.linalg.eig(A)
U = eigenvectors
Lambda = np.diag(eigenvalues)

# Print spectral decomposition
print("Spectral Decomposition:")
print("U:")
print(U)
print("Lambda:")
print(Lambda)
print("Conjugate Transpose of U:")
print(U.conj().T)

# Classification
is_hermitian = np.allclose(A, A.conj().T)
is_unitary = np.allclose(np.eye(A.shape[0]), U.conj().T @ U)
is_pos_semidef = np.all(eigenvalues >= 0)
is_pos_def = np.all(eigenvalues > 0)
is_normal = np.allclose(A @ A.conj().T, A.conj().T @ A)

# Print classification
print("\nClassification of Matrix A:")
if is_hermitian:
    print("Hermitian Matrix")
elif is_unitary:
    print("Unitary Matrix")
elif is_pos_def:
    print("Positively Definite Matrix")
elif is_pos_semidef:
    print("Positively Semidefinite Matrix")
elif is_normal:
    print("Normal Matrix")
else:
    print("Matrix does not fit into any specific category")
