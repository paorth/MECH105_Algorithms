function [fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)
    
%Filter outliers from your data set.
%Compute the linear regression on your filtered data set.
%Compute the  value from your filtered data and your linear regression function.

%linearRegression Computes the linear regression of a data set
%   Compute the linear regression based on inputs:
%     1. x: x-values for our data set
%     2. y: y-values for our data set
%
%   Outputs:
%     1. fX: x-values with outliers removed
%     2. fY: y-values with outliers removed
%     3. slope: slope from the linear regression y=mx+b
%     4. intercept: intercept from the linear regression y=mx+b
%     5. Rsquared: R^2, a.k.a. coefficient of determination

n = length(x);

if length(y) ~= n
    error('x and y arrays are not the same size')
end

%finding the outliers

[sortedY, sortOrder] = sort(y);
sortedX = x(sortOrder);

x = sortedX;
y = sortedY;

fqrt = floor((n+1)./4);
tqrt = floor((3.*n+3)./4);
Q1 = y(fqrt);
Q3 = y(tqrt);
iQr = Q3-Q1;
d_Qr = 1.5.*iQr;
Lb = Q1 - d_Qr;
Ub = d_Qr + Q3;





tic

%option 1
% keep = y > Lb & y < Ub;
% 
% fY = y(keep);
% fX = x(keep);



%z = 1;

%option 2
i = 1;
while i <= n
    
    if y(i) < Lb || y(i) > Ub
        
        y(i) = [];
        x(i) = [];

        i = i-1;
        n = length(y);
    end
    i = i +1;
end


toc
fY = y;
fX = x;




n = length(fX);
sxy = sum(fX.*fY);
sx = sum(fX);
sy = sum(fY);
sx2 = sum(fX.^2);


%normal equations
a1 = ((n.*sxy-sx.*sy)./(n.*sx2-(sx).^2));
a0 = mean(fY)-a1.*mean(fX);



% R^2

Sr = sum((fY-a0-a1.*fX).^2);
St = sum((fY - mean(fY)).^2);
linrReg = a0 + a1*fX;

R_sqrd = ((St-Sr)/St);
Rsquared = abs(R_sqrd);
intercept = a0;
slope = a1;


plot(fX,fY,'r*');
title('Graph of Lineaer regression line');
ylabel('Y values')
xlabel('x Values');
hold on
plot(fX,linrReg,'b');

fprintf('equation of line of best fit(y = mx +b): y = %f*x+%f', slope, intercept)




end
