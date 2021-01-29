function favours = vector_favours(a,b)

% dominates = vector_favours(a,b)
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
% Returns true if a is favoured over b (is better on more objectives).
% Returns false otherwise.
%
% Jonathan Fieldsend, University of Exeter, 2021

check_vectors_same_size(a,b);

favours = (sum(a<b) > sum(a>b));

end