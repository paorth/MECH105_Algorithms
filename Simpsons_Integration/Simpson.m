function [I] = Simpson(x, y)
   


% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

%check for evenly spaced
% lngx = length(x);
% lngy = length(y);



spcng_x = diff(x);
evn = all(spcng_x == spcng_x(1));
if evn == 0
    error('this array is not evenly spaced')
end
if length(x) ~= length(y)
    error('x and y arrays are not the same length')
end


lngx = length(x);
lngy = length(y);
trap = 0;
simp = 0;
b = x(lngx);
a = x(1);
yb = y(end);
ya = y(1);
if lngx > 2
    if rem(lngx,2) ~= 1

    

    warning('because their is an even number of segments the trapazoidal rule must be applied for the last interval')
    tx = x(lngx-1:lngx);
    ty = y(lngy-1:lngy);
    x = x(1:lngx-1);
    y = y(1:lngy-1);
    lngx = length(x);
    tay = ty(1);
    tby = ty(end);
    tb = tx(end);
    ta = tx(1);
    b = x(lngx);
    a = x(1);
    %trap rule
    trap = (tb-ta)/2 * (tby+tay);
    end




    ordr = 1:1:lngx;
    lgcl = logical(rem(ordr,2));


    h = (b-a)/(3*(lngx-1));
    ylgc = y(lgcl);
    ynlgc = y(~lgcl);
    sum4 = 4*sum(ynlgc(1:end));
    sum2 = 2*sum(ylgc(2:end-1));

    simp = h*(y(1)+sum4+sum2+y(end));
else
    warning('because there are only 2 data points, the trapazoidal rule must be applied for the last interval')

    trap = (b-a)/2 * (ya+yb);
end


I = simp+trap;




end