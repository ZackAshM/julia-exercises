"""
    encode(s)

Performs Run-length encoding on string s.

"""
function encode(s)
    # replace every repeating char by length and char
    replace(s, r"(.)\1+" => x -> string(length(x) == 1 ? "" : length(x)) * x[begin])
end

"""
    decode(s)

Performs Run-length decoding on string s.

"""
function decode(s)
    # replace every number and char with char repeated number times
    replace(s, r"\d+." => x -> x[end] ^ parse(Int, x[begin:end-1]))
end