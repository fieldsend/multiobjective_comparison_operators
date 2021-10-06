function z = get_ideal(X)

% z = get_ideal(X)
%
% Assumes all objectives are to be minimised
%
% INPUTS
%
% X = an N by M matrix of objective values, representing N individual
% objective vectors
%
% OUTPUT
%
% Returns the ideal objective vector, i.e. the minimum value on each M
% objectives
%
% Jonathan Fieldsend, University of Exeter, 2021

z = min(X);

end