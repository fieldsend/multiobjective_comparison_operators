function indices = get_nondominated_indices(A)

% indices = get_nondominated_indices(A)
%
% Assumes all objectives are to be minimised
%
% INPUTS
%
% A = A set (N by M) of objective values
%
% OUTPUT
%
% Returns an array holding the indices of those objective vectors (rows) in A
% which are not dominated by any other row
%
% Jonathan Fieldsend, University of Exeter, 2021

count = get_number_dominating(A);
indices = find(count==0);