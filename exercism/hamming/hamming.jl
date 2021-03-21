"""
    distance(a, b)

Returns the Hamming Distance between two strands of DNA.

Invalid strands raise a `DomainError`.
Unequal strand lengths raise an 'ArgumentError'.

"""
function distance(a, b)
    length(a) == length(b) || throw(ArgumentError("strand lengths must be equal"))
    return count(ab -> ab[1] != ab[2], zip(a, b))
end