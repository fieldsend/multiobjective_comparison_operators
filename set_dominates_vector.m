function [dominates, I_dom] = set_dominates_vector(A,b)

% dominates = set_dominates_vector(A,b)
%
% Assumes all objectives are to be minimised
%
% INPUTS
%
% A = A set (N by M) of objective values
% b = a vector (1 by M) of objective values
%
% OUTPUT
%
% Returns true if A dominates b (at least one row is better or equal on all
% objectives, and is strictly better on at least one).
% Returns false otherwise. Second return value holds an array indicating
% which members of A dominate b.
%
% Jonathan Fieldsend, University of Exeter, 2021

[N,M] = size(A);
I_better = sum(A < repmat(b,N,1),2);
I_equal = sum(A == repmat(b,N,1),2);

I_dom = ((I_better+I_equal) == M) & (I_better > 0); 

dominates = (max(I_dom)>0);
    
end

