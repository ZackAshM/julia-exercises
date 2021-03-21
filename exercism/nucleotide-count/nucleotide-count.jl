"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    return_dict = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    foreach(c -> c ∈ keys(return_dict) ? return_dict[c] += 1 : throw(DomainError("Invalid strand")), strand)
    return return_dict
end