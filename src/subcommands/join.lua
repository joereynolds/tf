local strings = require "./src/strings"

local join = {}

join.usage = [[
Incorrect usage of join

Usage:
  tf join JOIN
Example:
  echo '0800 00 1066' | tf join -"]]

join.requires_subcommand = true

function join.process(input, join_with)
    return strings.join(input, join_with)
end

return join
