# Linear Regression Analysis

This repository contains the code for performing linear regression analysis on a given dataset. The linearRegression function filters outliers from the dataset, computes the **linear regression**, and provides additional statistical measures.

## Function Description

The **linearRegression** function has the following signature:


`function [fX, fY, slope, intercept, Rsquared] = linearRegression(x, y)`

### Inputs 

- **x*:** x-values for the dataset.
- **y:** y-values for the dataset.

### Outputs

- **fX:** x-values with outliers removed.
- **fY:** y-values with outliers removed.
- **slope:** slope of the linear regression line (y = mx + b).
- **intercept:** intercept of the linear regression line (y = mx +b).
- **Rsquared:** coefficient of determination (R^2).

## Usage

To use the **linearRegression** function, follow these steps:

1. Clone or download this repository to your local machine.
2. Open MATLAB and navigate to the repository's directory.
3. Load or define your datasets **x** and **y** that represent the independent and dependent variables.
4. Call the **linearRegression** function with **x** and **y** as inputs.
5. The function will return the filtered x-values: **fX**, filtered y-values: **fY**, slope: **slope**, intercept: **intercept**, and R^2 value: **Rsquared**.

```
%Example Usage
x = [1, 2, 3, 4, 5];
y = [2, 4, 5, 7, 8];
[fX, fY, slope, intercept, Rsquared = linearRegression(x, y);
disp(fX);
disp(fY);
disp(slope);
disp(intercept);
disp(Rsquared);
```
In this example, we perform linear regression analysis on the given datasets **x** and **y**. The resulting filtered x-values: **fX**, filtered y-values: **fY**, slope: **slope**, intercept intercept, and R^2 value: **Rsquared** will be displayed in the MATLAB console.

## Notes
- The function filters outliers from the dataset based on the interquartile range method.
- The linear regression analysis computes the slope and intercept of the regression line using the normal equations.
- The coefficient of determination (R^2) is calculated as the ratio of the sum of squares of the residuals to the total sum of squares.
- The function also plots the scatter plot of the dataset and the linear regression line.

