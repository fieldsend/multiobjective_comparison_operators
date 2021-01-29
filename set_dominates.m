function dominates = set_dominates(A,b)

% dominates = set_dominates(A,b)
%
% Assumes all objectives are to be minimised
%
% INPUTS
%
% A = A set (N by K) of objective values
% b = a vector (1 by K) of objective values
%
% OUTPUT
%
% Returns true if A dominates b (at least one row is better or equal on all
% objectives, and is strictly better on at least one).
% Returns false otherwise.
%
% Jonathan Fieldsend, University of Exeter, 2021

check_vectors_same_size(A(1,:),b);
[N,K] = size(A);
I_better = zeros(N,1);
I_equal = zeros(N,1);
for k=1:K
    I_better = I_better + (A(:,k) < b(k));
    I_equal = I_equal + (A(:,k) == b(k));
end

I_dom = (sum(I_better+I_equal,2)==K) & (sum(I_better,2)>0); 

dominates = (max(I_dom)>0);
    
end

