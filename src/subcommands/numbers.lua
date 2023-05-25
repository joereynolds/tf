local strings = require "./src/strings"

local numbers = {}

numbers.requires_subcommand = false

function numbers.process(input)
    local digits = {}

    for word in string.gmatch(input, "%d") do
        table.insert(digits, word)
    end

    return table.concat(digits)
end

return numbers
