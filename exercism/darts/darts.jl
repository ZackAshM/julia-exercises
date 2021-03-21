function score(x, y)
    
    # distance from center 0,0
    d = sqrt(x^2 + y^2)
    
    # returns whatever is true first
    d>10 && return 0
    d>5 && return 1
    d>1 && return 5
    return 10
    
end