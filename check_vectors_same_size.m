function check_vectors_same_size(a,b)

if (length(a) ~= length(b))
    error('objective vectors must be the same length');
end
