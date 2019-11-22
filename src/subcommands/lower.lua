local lower = {}

lower.requires_subcommand = false

function lower.process(input)
    return string.lower(input)
end

return lower
