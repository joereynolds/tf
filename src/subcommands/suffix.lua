local strings = require "./src/strings"

local suffix = {}

suffix.usage = [[
Incorrect usage of suffix

Usage:
  tf suffix SUFFIX
Example:
  echo 'pain' | tf suffix ful"]]

suffix.requires_subcommand = true

function suffix.process(input, chars)
    return strings.suffix(input, chars)
end

return suffix
