function [strict_dominates] = set_strict_dominates(A,b)

% dominates = set_strict_dominates(A,b)
%
% Assumes all objectives are to be minimised
%
% INPUTS
%
% A = A set (N by K) of objective values
% b = a vector (1 by K) of objective values
%
% OUTPUTS
%
% strict_dominates = true if A strictly dominates b (at least one row is better 
%     on all objectives). false otherwise.
%
% Jonathan Fieldsend, University of Exeter, 2021


check_vectors_same_size(A(1,:),b);
[N,K] = size(A);
I_better = zeros(N,1);
for k=1:K
    I_better = I_better + (A(:,k) < b(k));
end

I_better = sum(I_better,2); 
% I_better now holds the number of objectives that each of the N
% objective vectors in B is better to b on 
strict_dominates = (max(I_better)==K);
    
end
