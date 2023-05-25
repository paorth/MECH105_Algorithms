#Simpsons 1/3 Rule for Numerical Integration

This repository showcases my implementation of the Simpson's 1/3 Rule algorithm for numerical evaluation of integrals. The function Simpson calculates the numerical integral using Simpson's 1/3 Rule.

##Function Description

The **Simpson** function has the following signature:

`function [I] = Simpson(x, y)`

###Inputs

- **x:** The vector of equally spaced independent variable.
- **y:** The vector of function values with respect to x.

###Outputs

- **I:** The numerical integration calculated

##Usage

To use the **Simpson** function, follow these steps:

1. Clone or download this repository to your local machine.
2. Open MATLAB and navigate to the repository's directory.
3. Load or define your vectors x and y that represent the independent variable and corresponding function values.
4. Call the Simpson function with x and y as inputs.
5. The function will return the numerical integral I.

`%Example usage
x = [0, 1, 2, 3, 4];
y = [0, 1, 4, 9, 16];
I = Simpson(x, y);
disp(I);`

In this example, we calculate the numerical integral using Simpson's 1/3 Rule with the given **x** and **y** vectors. The resulting value of the integral I will be displayed in the MATLAB console.

##Notes

- The function checks for evenly spaced values in the **x** vector. If the values are not evenly spaced, an error is thrown.
- The function handles cases where there are an even number of segments by applying the trapezoidal rule for the last interval.
- When there are only two data points, the trapezoidal rule is applied for the last interval.
