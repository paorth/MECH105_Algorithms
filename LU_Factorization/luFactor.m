function [L, U, P] = luFactor(A)
% %luFactor(A)
%	LU decomposition with pivoting
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
[length, height] = size(A);


if height ~= length 
    error('matrix is invalid')
end

%pivoting


    

n = size(A,1);
L = eye(n);
U = zeros(n);
U(:,:) = A(:,:);
P = eye(n);

for i = 1:n
    [~, u] = max(abs(A(i:n,i)));
    u = u+i-1;
    A([i u],:) = A([u i],:);
    P([i u],:) = P([u i], :);
    L([i u],1:i-1) = L([u i],1:i-1);
    U(i,:) = A(i,:);
    L(i+1:n,i) = A(i+1:n,i)/A(i,i);
    A(i+1:n,:) = A(i+1:n,:) - L(i+1:n,i)*A(i,:);
end


end