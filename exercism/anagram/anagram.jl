"""
        detect_anagrams(subject, candidates)

returns a list of which candidates are anagrams of the subject
"""
function detect_anagrams(subject, candidates)
    valid = sort(split(lowercase(subject),""))
    return [c for c ∈ candidates if (sort(split(lowercase(c),"")) == valid) & (lowercase(subject) != lowercase(c))]
end

# using permutation function
# using Combinatorics

# function detect_anagrams(subject, candidates)
#     s = lowercase(subject)
#     return [c for c ∈ candidates if (split(lowercase(c),"") ∈ permutations(split(s,""))) & (s != lowercase(c))]
# end