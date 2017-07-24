function B = jstep(A,r,s)
% Performs Gauss-Jordon elimination step on matrix A with (r,s) element 
% as pivot.  
% Execute as B = jstep(A,2,2), for example
%
[m,n] = size(A); B = zeros(m,n);
I = [1:r-1,r+1:m];
J = [1:s-1,s+1:n];

% update pivot row
B(r,:) = A(r,:)/A(r,s);

% update remaining rows
B(I,:) = A(I,:) - A(I,s)*B(r,:);

end
