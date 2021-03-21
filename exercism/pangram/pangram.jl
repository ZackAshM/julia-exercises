"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    return all(in(lowercase(input)), join('a':'z'))
end
