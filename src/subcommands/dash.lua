local strings = require "./src/strings"

local dash = {}

dash.usage = [[
Incorrect usage of dash

Usage:
  tf dash
Example:
  echo 'myCssVariable' | tf dash"]]

dash.requires_subcommand = false

function dash.process(input)
    local result, _ = string.gsub(input, "[A-Z]", "-%1")

    local starting_char = string.sub(result, 1, 1)
    if starting_char == '-' then
        result = string.sub(result, 2)
    end

    return string.lower(result)
end

return dash
