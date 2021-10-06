function dominates = set_dominates_set(A,B)

% dominates = set_dominates_set(A,B)
%
% Assumes all objectives are to be minimised
%
% INPUTS
%
% A = A set (N by M) of objective values
% B = A set (K by M) of objective values
%
% OUTPUT
%
% Returns true if A dominates B (at least one row is better or equal on all
% objectives, and is strictly better on at least one than each row of B).
% Returns false otherwise.
%
% Jonathan Fieldsend, University of Exeter, 2021

dominates = true;
[K,~] = size(B);
for i=1:K
    if set_dominates_vector(A,B(i,:)) == false
        dominates = false;
        break;
    end
end

end

