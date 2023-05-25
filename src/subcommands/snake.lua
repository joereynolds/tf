local strings = require "./src/strings"

local snake = {}

snake.usage = [[
Usage:
  tf snake
Example:
  echo 'myOldschoolVariable' | tf snake"]]

snake.requires_subcommand = false

function snake.process(input)
    local result, _ = string.gsub(input, "[A-Z]", "_%1")

    local starting_char = string.sub(result, 1, 1)
    if starting_char == '_' then
        result = string.sub(result, 2)
    end

    return string.lower(result)
end

return snake
