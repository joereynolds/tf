local strings = require "./src/strings"

local numbers = {}

numbers.requires_subcommand = false

function numbers.process(input)
    return strings.numbers(input)
end

return numbers
