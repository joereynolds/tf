local reverse = {}

reverse.requires_subcommand = false

function reverse.process(input)
    return string.reverse(input)
end

return reverse
