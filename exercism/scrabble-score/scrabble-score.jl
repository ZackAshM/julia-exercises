"""
        score(str::AbstractString; 
                doubleletter::AbstractString, 
                tripleletter::::AbstractString, 
                double::Bool, 
                triple::Bool)

Returns the scrabble score for a given word using the chart:

Letter                           Value
A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z                               10

Raises ArgumentError if both double and triple true
"""
function score(str::AbstractString; 
        doubleletter=""::AbstractString, tripleletter=""::AbstractString, 
        double=false::Bool, triple=false::Bool)::Int
    
    scores = Dict(zip('A':'Z', [1,3,3,2,1,4,2,4,1,8,5,1,3,1,1,3,10,1,1,1,1,4,4,8,4,10]))
    (double & triple) && throw(ArgumentError("Cannot be both double and triple"))
    mult = double ? 2 : (triple ? 3 : 1)
    
    return mult * sum([isascii(c) ? scores[uppercase(c)] : 0 for c ∈ str * doubleletter * tripleletter^2])
    
end