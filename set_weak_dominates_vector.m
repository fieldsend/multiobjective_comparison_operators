function [weak_dominates] = set_weak_dominates_vector(A,b)

% dominates = set_weak_dominates(A,b)
%
% Assumes all objectives are to be minimised
%
% INPUTS
%
% A = A set (N by M) of objective values
% b = a vector (1 by M) of objective values
%
% OUTPUTS
%
% weak_dominates = true if A weakly dominates b (at least one row is better 
%     or equal on all objectives). false otherwise.
%
% Jonathan Fieldsend, University of Exeter, 2021


[N,M] = size(A);
I_better_or_equal = sum(A <= repmat(b,N,1),2);

% I_better_or_equal now holds the number of objectives that each of the N
% objective vectors in A is better or equal than b on 
weak_dominates = (max(I_better_or_equal)==M);
    
end

