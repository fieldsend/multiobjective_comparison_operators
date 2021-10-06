function strict_dominates = set_strict_dominates_set(A,B)

% strict_dominates = set_strict_dominates_set(A,B)
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
% Returns true if A strictly dominates B (at least one row is better on all
% objectives for each row of B).
% Returns false otherwise.
%
% Jonathan Fieldsend, University of Exeter, 2021

strict_dominates = true;
for i=1:K
    if set_strict_dominates_vector(A,B(i,:)) == false
        strict_dominates = false;
        break;
    end
end

end

