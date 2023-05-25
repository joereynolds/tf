local strings = require "./src/strings"

local title = {}

title.requires_subcommand = false

function title.process(input)
    local words = strings.split(input)
    local titles = {}

    for _, word in ipairs(words) do
        word = string.upper(string.sub(word, 1, 1)) .. string.sub(word, 2)
        table.insert(titles, word)
    end

    return table.concat(titles, " ")
end

return title
