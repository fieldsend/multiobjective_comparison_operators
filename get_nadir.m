function z = get_nadir(X)

% z = get_nadir(X)
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
% Returns the nadir objective vector, i.e. the maximum value on each M
% objectives
%
% Jonathan Fieldsend, University of Exeter, 2021

z = max(X);

end