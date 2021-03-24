"""
        triangle(n::Int)

Returns an array of rows in Pascal's Triangle of depth n

Throws DomainError if n < 0
"""
function triangle(n::Int)
    
    # special cases
    n < 0 && throw(DomainError("Cannot take negative argument n"))
    n == 0 && return []
    
    # end of recursion
    n == 1 && return [[1]]
    
    # get rows recursively
    last_tri = triangle(n-1)
    last_row = last_tri[end]
    new_row = [[last_row;0] + [0;last_row]] # ; = append inside arrays
    
    # append last triangle and new row
    return [last_tri; new_row]

end