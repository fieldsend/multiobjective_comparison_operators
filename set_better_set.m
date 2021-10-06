function better = set_better_set(A,B)

% better = set_better_set(A,B)
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
% objectives for each row of B), and A and B do not have the same contents
% Returns false otherwise.
%
% Jonathan Fieldsend, University of Exeter, 2021

better = true;

[N,M] = size(A);
[K,~] = size(B);
if set_weak_dominates_set(A,B) == false
    better = false;
else
    if K==N
        % A weak dominates B, but sets are the same size, so might not be
        % better
        dominates = 0;
        for i = 1:M
            if set_dominates_vector(A,B(i,:))
               dominates = 1;
               break;
            end
        end
        if dominates == 0 % no members in B are dominated by A, and sets same size, so not better
            better = false;
        end
    end
end
end
