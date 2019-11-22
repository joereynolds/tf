local upper = {}

upper.requires_subcommand = false

function upper.process(input)
    return string.upper(input)
end

return upper
