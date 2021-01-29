function [weak_dominates] = set_weak_dominates(A,b)

% dominates = set_weak_dominates(A,b)
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
% weak_dominates = true if A weakly dominates b (at least one row is better 
%     or equal on all objectives). false otherwise.
%
% Jonathan Fieldsend, University of Exeter, 2021


check_vectors_same_size(A(1,:),b);
[N,K] = size(A);
I_better_or_equal = zeros(N,1);
for k=1:K
    I_better_or_equal = I_better_or_equal + (A(:,k) <= b(k));
end

I_better_or_equal = sum(I_better_or_equal,2); 
% I_better_or_equal now holds the number of objectives that each of the N
% objective vectors in B is better r equal to b on 
weak_dominates = (max(I_better_or_equal)==K);
    
end

