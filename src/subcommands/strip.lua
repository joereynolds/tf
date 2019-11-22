local strings = require "./src/strings"

local strip = {}

strip.usage = [[
Incorrect usage of strip

Usage:
  tf strip STRIP
Example:
  echo 'pain' | tf strip i"]]

strip.requires_subcommand = true

function strip.process(input, strip_char)
    return strings.strip(input, strip_char)
end

return strip
