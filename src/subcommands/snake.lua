local strings = require "./src/strings"

local snake = {}

snake.usage = [[
Usage:
  tf snake
Example:
  echo 'myOldschoolVariable' | tf snake"]]

snake.requires_subcommand = false

function snake.process(input)
    return strings.snake(input)
end

return snake
