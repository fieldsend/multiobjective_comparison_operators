function dominates = vector_dominates(a,b)

% dominates = vector_dominates(a,b)
%
% Assumes all objectives are to be minimised
%
% INPUTS
%
% a = a vector (1 by K) of objective values
% b = a vector (1 by K) of objective values
%
% OUTPUT
%
% Returns true if a dominates b (is better or equal on all objectives,
% and is strictly better on at least one).
% Returns false otherwise.
%
% Jonathan Fieldsend, University of Exeter, 2021


check_vectors_same_size(a,b);
dominates = false;
if sum(a<=b) == length(a)
    if sum(a<b) > 0 
        dominates = true;
    end
end
