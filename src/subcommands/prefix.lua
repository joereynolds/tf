local strings = require "./src/strings"

local prefix = {}

prefix.usage = [[
Incorrect usage of prefix

Usage:
  tf prefix PREFIX
Example:
  echo 'jective' | tf prefix ad"]]

prefix.requires_subcommand = true

function prefix.process(word, prefix)
    return prefix .. word
end

return prefix
