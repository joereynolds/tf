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
    return strings.dash(input)
end

return dash
