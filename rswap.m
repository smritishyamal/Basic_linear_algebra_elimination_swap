function B = rswap(A,r,s)
% Performs row swap on matrix A. Row r is swapped with row s
% Execute as B = rswap(A,2,1) for example
%
B = A;

% Execute row interchange
B(r,:) = A(s,:); B(s,:) = A(r,:);

end
