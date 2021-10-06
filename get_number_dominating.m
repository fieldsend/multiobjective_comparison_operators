function count = get_number_dominating(A)

% number_dominating = get_number_dominating(A)
%
% Assumes all objectives are to be minimised
%
% INPUTS
%
% A = A set (N by M) of objective values
%
% OUTPUT
%
% Returns an array holding the number of objective vectors (rows) in A
% which dominate each objective vector
%
% Jonathan Fieldsend, University of Exeter, 2021

[N,~] = size(A);
count = zeros(N,1); % preallocate for speed
for i=1:N
    [~, I_dom] = set_dominates_vector(A,A(i,:));
    count(i) = sum(I_dom);
end

