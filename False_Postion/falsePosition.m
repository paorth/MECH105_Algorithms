function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
%Inputs:
% func - the function being evaluated
%  - the lower guess
%  - the upper guess
% es - the desired relative error (should default to 0.0001%)
% maxit - the maximum number of iterations to use (should default to 200)
% varargin, . . . - any additional parameters used by the function

% Outputs:
% root - the estimated root location
% fx - the function evaluated at the root location
% ea - the approximate relative error (%)
% iter - how many iterations were performed


u = sign(func(xu));

l = sign(func(xl));



%default codes
if nargin < 3
    error('not enough inputs into the function')
elseif nargin < 4
    es = 0.0001;
    maxit = 200;
elseif nargin < 5
    maxit = 200;
elseif nargin > 5
    error('too many inputs into the function')

end


if u == l
    error('upper and lower guess invalid, both on same side of zero')
elseif u == 0
    disp('your xu guess is a zero!')
    return
elseif l ==0
    disp('your xl guess is a zero!')
    return
end
 

%start of function algorithm 



iter = 0;
ea = 100;
xr_old = 100;
while es < ea &&  iter < maxit
   
    root = xu - (((func(xu).*(xl-xu))./(func(xl)-func(xu))));
    x_new = func(root);


    if sign(x_new)==0
        ea = 0;
       
    end

    if sign(x_new) == u
        xu = root;
        ea = abs((root- xr_old)./(root)).*100;
    elseif sign(x_new) == l
        xl = root;
        ea = abs((root - xr_old)./(root)).*100;
  
    end

    iter = iter+1;
end

fx = func(root);






end
