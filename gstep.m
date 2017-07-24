function B = gstep(A,r,s)
% Performs Gauss elimination step on matrix A with (r,s) element 
% as pivot.  Note:  Cannot apply to last row of matrix.
% Execute as B = gstep(A,2,2), for example
%
[m,n] = size(A); B = A;
I = [r+1:m]; 
J = [s:n];

% Update rows beneath pivot row, and columns from pivot column to end  
B(I,J) = A(I,J) - A(I,s)*A(r,J)/A(r,s);

end
