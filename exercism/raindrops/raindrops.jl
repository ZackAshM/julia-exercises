"""
        raindrops(number)::AbstractString

Returns a string according to the following:
    has 3 as a factor, add 'Pling' to the result.
    has 5 as a factor, add 'Plang' to the result.
    has 7 as a factor, add 'Plong' to the result.
    does not have any of 3, 5, or 7 as a factor, the result should be the digits of the number.
"""
function raindrops(number)::AbstractString
    s = ""
    number % 3 == 0 && (s *= "Pling")
    number % 5 == 0 && (s *= "Plang")
    number % 7 == 0 && (s *= "Plong")
    return isempty(s) ? string(number) : s
end