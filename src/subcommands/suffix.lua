local strings = require "./src/strings"

local suffix = {}

suffix.usage = [[
Incorrect usage of suffix

Usage:
  tf suffix SUFFIX
Example:
  echo 'pain' | tf suffix ful"]]

suffix.requires_subcommand = true

function suffix.process(word, suffix)
    return word .. suffix
end

return suffix
