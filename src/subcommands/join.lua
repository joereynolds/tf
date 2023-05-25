local strings = require "./src/strings"

local join = {}

join.usage = [[
Incorrect usage of join

Usage:
  tf join JOIN
Example:
  echo '0800 00 1066' | tf join -"]]

join.requires_subcommand = true

function join.process(sentence, join_char)
    local words = strings.split(sentence)
    return table.concat(words, join_char)
end

return join
