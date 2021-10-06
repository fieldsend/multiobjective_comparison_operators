function [strict_dominates] = set_strict_dominates_vector(A,b)

% dominates = set_strict_dominates_vector(A,b)
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
% strict_dominates = true if A strictly dominates b (at least one row is better 
%     on all objectives). false otherwise.
%
% Jonathan Fieldsend, University of Exeter, 2021

[N,M] = size(A);
I_better = sum(A < repmat(b,N,1),2);

% I_better now holds the number of objectives that each of the N
% objective vectors in A is better then b on 
strict_dominates = (max(I_better)==M);
    
end
