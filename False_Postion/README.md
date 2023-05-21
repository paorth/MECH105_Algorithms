# False Position Algorithm

This repository contains a MATLAB implementation of the False Position algorithm, a numerical method used to approximate the roots of a given function.

## How it Works
The False Position algorithm uses a similar approach to the Bisection Method, but typically converges faster. The algorithm works by selecting two initial points, which must bracket the root of the function. It then calculates the midpoint between these two points and evaluates the function at this point. Based on the sign of the function value at this point, it replaces one of the initial points with the midpoint, and repeats the process until the approximate root is found to within a specified tolerance.

## Usage

To use this False Position algorithm implementation in MATLAB, simply run the falsePosition.m script in the MATLAB environment.  

### inputs:

- **func**: The function for which to find a root (must be defined in MATLAB syntax)
- **xl**: The lower bound of the initial interval
- **xu**: The upper bound of the initial interval
- **es**: The desired relative error (default value is 0.0001%)
- **maxiter**: The maximum number of iterations to perform (default value is 200)  

### Outputs:

- **root**: The approximate root of the function
- **fx**: The function value at the approximate root
- **ea**: The approximate relative error at the root
- **iter**: The number of iterations performed by the algorithm

 `test`

