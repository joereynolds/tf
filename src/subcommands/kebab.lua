local strings = require "./src/strings"

local kebab = {}

kebab.usage = [[
Incorrect usage of kebab

Usage:
  tf kebab
Example:
  echo 'myCssVariable' | tf kebab"]]

kebab.requires_subcommand = false

function kebab.process(input)
    local result, _ = string.gsub(input, "[A-Z]", "-%1")

    local starting_char = string.sub(result, 1, 1)
    if starting_char == '-' then
        result = string.sub(result, 2)
    end

    return string.lower(result)
end

return kebab
