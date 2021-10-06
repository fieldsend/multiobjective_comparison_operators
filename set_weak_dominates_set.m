function weak_dominates = set_weak_dominates_set(A,B)

% weak_dominates = set_weak_dominates_set(A,B)
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
% Returns true if A weakly dominates B (at least one row is better or equal on all
% objectives for each row of B).
% Returns false otherwise.
%
% Jonathan Fieldsend, University of Exeter, 2021

weak_dominates = true;
[K,~] = size(B);
for i=1:K
    if set_weak_dominates_vector(A,B(i,:)) == false
        weak_dominates = false;
        break;
    end
end

end

