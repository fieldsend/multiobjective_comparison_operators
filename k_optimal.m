function min_k = k_optimal(b,A)

% min_k =  k_optimal(b,A)
%
% Assumes all objectives are to be minimised
%
% INPUTS
%
% b = a vector (1 by K) of objective values
% A = set, (N by K) of objective values, corresponding to N objective
% vectors
%
% OUTPUT
%
% Returns the minimum value of k for which b is k-optimal with respect to 
% set A. If b is dominated by A, will return a value of K+1
%
% DETAILS
%
% Solution b is order k optimal compared to set A if it is not dominated by
% any member of A for any k-element subset of the K objectives. That is, if 
% it is non-dominated by A under all the K choose k subspaces of objective 
% combinations. 
%
% Jonathan Fieldsend, University of Exeter, 2021

check_vectors_same_size(A(1,:),b);
K = length(b);

min_k = K+1;
% First a quick check to see if a is domianted by B, as if it is, will not
% need to do anything further
if (set_dominates(A,b))
    return;
end

min_k = 1;
% a is non-domianted by B, now pregressively process all possible 
% combination of 'k' objectives, until we find the smallest value of k for 
% which a remains non-dominated with respect to B for all combinations 
for k = K-1:-1:1
    if (is_k_optimal(A,b,K,k)==false)
        min_k = k+1;
        break;
    end
end

end

function is_optimal = is_k_optimal(A,b,K,k)

% process all permulations of k objectives and check if B dominates a on
% them. Return true if a is not dominated under any combination

is_optimal = true;
combinations = nchoosek(1:K,k);
n = size(combinations,1);
for i = 1:n
    if (set_dominates( A(:,combinations(i,:)),b(1,combinations(i,:)) ))
        is_optimal = false;
        break;
    end
end
end