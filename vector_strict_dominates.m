function dominates = vector_strict_dominates(a,b)

% dominates = vector_strict_dominates(a,b)
%
% Assumes all objectives are to be minimised
%
% INPUTS
%
% a = a vector (1 by M) of objective values
% b = a vector (1 by M) of objective values
%
% OUTPUT
%
% Returns true if a strictly dominates b (is better on all objectives).
% Returns false otherwise.
%
% Jonathan Fieldsend, University of Exeter, 2021

check_vectors_same_size(a,b);

dominates = ((sum(a<b) == length(a)));

end