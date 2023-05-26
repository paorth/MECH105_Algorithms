# LU Factorizatoin with Pivoting

This repository showcases my implementation of the LU Factorization algorithm, a numerical method used to decompose a matrix into the product of lower and upper triangular matrices. In this algorithm, the  LU Factorization is widely used in various scientific and engineering applications, such as solving systems of linear equations and calculating matrix inverses.

## How it works 

The luFactor function performs LU decomposition with pivoting and has the following signature:

`[L, U, P} = luFactor(A)`

To use the luFactor function, clone or download the repository and navigate to its directory in MATLAB. Load or define your coefficient matrix A, then call the luFactor function with **A** as the input. 

### Inputs
- **A**: The coefficient matrix for LU decomposition.

### Outputs

- **L**: The lower triangular matrix obtained from LU decomposition.
- **U**: The upper triangular matrix obtained from LU decomposition.
- **P**: The permutation matrix

## Usage
To use the **luFactor** function, follow these steps:

1. Clone or download this repository to your local machine.
2. Open MATLAB and navigate to the repository's directory.
3. Define the coefficient matrix **A**.
4. Call the **luFactor** function with the coefficient matrix as the input.
5. The function will return the lower triangular matrix **L**, upper triangular matrix **U**, and the permutation matrix **P**.

```
% Example usage
A = [1 2 3; 4 5 6; 7 8 9];
[L, U, P] = luFactor(A);
disp(L);
disp(U);
disp(P);
```

In this example, we use the **luFactor** function to decompose the coefficient matrix **A**. The resulting lower triangular matrix **L**, upper triangular matrix **U**, and the permutation matrix **P** will be displayed in the MATLAB console.



## Notes

- The function performs LU decomposition with pivoting to improve numerical stability.
- The input matrix A must be square, i.e., the number of rows must be equal to the number of columns.
- The function checks the validity of the input matrix and raises an error if it is invalid.
- The function uses partial pivoting to interchange rows to avoid division by zero and numerical instability.
- The lower triangular matrix L is constructed by storing the multipliers used during the elimination process.
- The upper triangular matrix U represents the modified matrix after the elimination process.
- The permutation matrix P keeps track of the row interchanges performed during pivoting.


