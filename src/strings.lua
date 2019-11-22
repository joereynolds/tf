local strings = {}

function strings.join(sentence, join_char)
    local words = strings.split(sentence)
    return table.concat(words, join_char)
end

function strings.title(sentence)
    local words = strings.split(sentence)
    local titles = {}

    for _, word in ipairs(words) do
        word = string.upper(string.sub(word, 1, 1)) .. string.sub(word, 2)
        table.insert(titles, word)
    end

    return table.concat(titles, " ")
end

function strings.split(sentence)
    local words = {}

    for word in string.gmatch(sentence, "%S+") do
        table.insert(words, word)
    end

    return words
end

function strings.strip(sentence, characters)
    local result, _ = string.gsub(sentence, "[".. characters .. "]", "")
    return result
end

function strings.prefix(word, prefix)
    return prefix .. word
end

function strings.suffix(word, suffix)
    return word .. suffix
end

function strings.numbers(input)
    local digits = {}

    for word in string.gmatch(input, "%d") do
        table.insert(digits, word)
    end

    return table.concat(digits)
end

return strings
