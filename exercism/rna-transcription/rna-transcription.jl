function to_rna(dna)
    sub = Dict('G' => 'C','C' => 'G','T' => 'A','A' => 'U')
    return map(c -> (c ∈ keys(sub) ? sub[c] : throw(ErrorException("Invalid DNA strand"))), dna)
end