# False Position Algorithm

This repository contains a MATLAB implementation of the False Position algorithm, a numerical method used to approximate the roots of a given function.

## How it Works
The False Position algorithm uses a similar approach to the Bisection Method, but typically converges faster. The algorithm works by selecting two initial points, which must bracket the root of the function. It then calculates the midpoint between these two points and evaluates the function at this point. Based on the sign of the function value at this point, it replaces one of the initial points with the midpoint, and repeats the process until the approximate root is found to within a specified tolerance.

The **falsePosition** function has the following signature:
`function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)`


### inputs:

- **func**: The function for which to find a root (must be defined in MATLAB syntax)
- **xl**: The lower bound of the initial interval
- **xu**: The upper bound of the initial interval
- **es**: The desired relative error (default value is 0.0001%)
- **maxit**: The maximum number of iterations to perform (default value is 200)  

### Outputs:

- **root**: The approximate root of the function
- **fx**: The function value at the approximate root
- **ea**: The approximate relative error at the root
- **iter**: The number of iterations performed by the algorithm

## Usage 

To use the falsePosition function, follow these steps:

1. Clone or download this repository to your local machine.
2. Open MATLAB and navigate to the repository's directory.
3. Define the function you want to evaluate and its parameters.
4. Call the **falsePosition** function with the required inputs.
5. The function will return the estimated root location: **root**, function value at the root: **fx**, approximate relative error: **ea**, and the number of iterations: **iter**.

```
% Example usage
func = @(x) x^2 - 4;
xl = 1;
xu = 3;
es = 0.001;
maxit = 100;
[root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit);
disp(root);
disp(fx);
disp(ea);
disp(iter);
```

In this example, we use the **falsePosition** function to find the root of the function **x^2 - 4** using the given lower guess **xl**, upper guess **xu**, desired relative error **es**, and maximum number of iterations **maxit**. The resulting estimated root, **root**, function value at the root **fx**, approximate relative error **ea**, and the number of iterations **iter** will be displayed in the MATLAB console.

## Notes

- The function checks for the validity of the input guesses and handles cases where both guesses are on the same side of zero or when either guess is zero.
- The algorithm continues until the desired relative error is achieved or the maximum number of iterations is reached.
- The function calculates the approximate relative error after each iteration.
- The value of the function at the estimated root location is computed and returned.



 

