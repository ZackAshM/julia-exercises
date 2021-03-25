"""
        wordcount(sentence)

Returns a dictionary containing recognized words and their count.
"""
function wordcount(sentence)
    d = Dict()
    words = [lowercase(word.match) for word ∈ eachmatch(r"(\w+('\w)*)+", sentence)]
    foreach(word -> d[word] = count(w -> word == w, words), unique(words))
    return d
end