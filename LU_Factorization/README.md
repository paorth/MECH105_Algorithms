# LU Factorizatoin Algorithm

This repository showcases my implementation of the LU Factorization algorithm, a numerical method used to decompose a matrix into the product of lower and upper triangular matrices. In this algorithm, the  LU Factorization is widely used in various scientific and engineering applications, such as solving systems of linear equations and calculating matrix inverses.

## How it works 

The luFactor function performs LU decomposition with pivoting and has the following signature:

`[L, U, P} = luFactor(A)`
## Usage
To use the luFactor function, clone or download the repository and navigate to its directory in MATLAB. Load or define your coefficient matrix A, then call the luFactor function with **A** as the input. 

### Inputs
- **A**: The coefficient matrix for LU decomposition.

### Outputs

- **L**: The lower triangular matrix obtained from LU decomposition.
- **U**: The upper triangular matrix obtained from LU decomposition.
- **P**: The permutation matrix


