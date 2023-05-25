local strings = {}

function strings.split(sentence)
    local words = {}

    for word in string.gmatch(sentence, "%S+") do
        table.insert(words, word)
    end

    return words
end

return strings
