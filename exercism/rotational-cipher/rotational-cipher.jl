"""
        rotate_single(key::Int, input::Char)

Implements the Caesar cipher for a single char input using a given key.
"""
function rotate_single(key::Int, input::Char)
    alphabet = nothing ∈ indexin(input, collect('a':'z')) ? collect('A':'Z') : collect('a':'z')
    return alphabet[(indexin(input, alphabet)[1] + key - 1) % 26 + 1]
end

"""
        rotate(key, input::String)

Implements the Caesar cipher for a string input using a given key.
"""
function rotate(key::Int, input::Union{String, Char})
    out = join([isletter(input[i]) ? rotate_single(key, input[i]) : input[i] for i ∈ range(1, length=length(input))])
    typeof(input) == Char && (out = out[1])
    return out
end

# bonus A. string literal
# macro R13_str(s)
#     rotate(13, s)
# end

# bonus B. 
for i ∈ 0:26
    @eval macro ($(Symbol("R$i"*"_str")))(s); rotate($i, s); end
end