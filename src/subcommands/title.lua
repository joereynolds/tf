local strings = require "./src/strings"

local title = {}

title.requires_subcommand = false

function title.process(input)
    return strings.title(input)
end

return title
