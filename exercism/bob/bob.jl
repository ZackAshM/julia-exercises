function bob(stimulus)
    
    # misc by default
    stim_type = "misc"
    
    # responses
    response = Dict(
        "question" => "Sure.",
        "yelling" => "Whoa, chill out!",
        "silence" => "Fine. Be that way!",
        "misc" => "Whatever.",
        "forceful_question" => "Calm down, I know what I'm doing!",
    )
    
    # boolean conditions
    letters = join([c for c in stimulus if isletter(c)])
    yell = length(letters) == 0 ? false : all(c -> isuppercase(c), letters)
    question = endswith(rstrip(stimulus),'?')
    silent = all(c -> (!isprint(c) | isspace(c)), stimulus)
    forceful = (yell & question)
    
    # if then
    silent && (stim_type = "silence")
    yell && (stim_type = "yelling")
    question && (stim_type = "question")
    forceful && (stim_type = "forceful_question")
    
    # respond
    return response[stim_type]
    
end