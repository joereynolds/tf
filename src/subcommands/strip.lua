local strings = require "./src/strings"

local strip = {}

strip.usage = [[
Incorrect usage of strip

Usage:
  tf strip STRIP
Example:
  echo 'pain' | tf strip i"]]

strip.requires_subcommand = true

function strip.process(sentence, characters)
    local result, _ = string.gsub(sentence, "[" .. characters .. "]", "")
    return result
end

return strip
