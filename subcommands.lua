local strings = require "strings"

local subcommands = {}

-- Join
subcommands.join = {}
subcommands.join.usage = [[
Incorrect usage of join

Usage:
  tf join JOIN
Example: 
  echo '0800 00 1066' | tf join -"]]

subcommands.join.requires_subcommand = true

function subcommands.join.process(input, join_with)
    return strings.join(input, join_with)
end

-- Prefix
subcommands.prefix = {}
subcommands.prefix.usage = [[
Incorrect usage of prefix

Usage:
  tf prefix PREFIX
Example: 
  echo 'jective' | tf prefix ad"]]
subcommands.prefix.requires_subcommand = true

function subcommands.prefix.process(input, prefix)
    return strings.prefix(input, prefix)
end

-- Suffix
subcommands.suffix = {}
subcommands.suffix.usage = [[
Incorrect usage of suffix

Usage:
  tf suffix SUFFIX
Example: 
  echo 'pain' | tf suffix ful"]]

subcommands.suffix.requires_subcommand = true

function subcommands.suffix.process(input, suffix)
    return strings.suffix(input, suffix)
end

-- Strip
subcommands.strip = {}
subcommands.strip.usage = [[
Incorrect usage of strip

Usage:
  tf strip STRIP
Example: 
  echo 'pain' | tf strip i"]]
subcommands.strip.requires_subcommand = true

function subcommands.strip.process(input, strip_char)
    return strings.strip(input, strip_char)
end

-- Lower
subcommands.lower = {}
subcommands.lower.requires_subcommand = false

function subcommands.lower.process(input)
    return string.lower(input)
end

-- Upper
subcommands.upper = {}
subcommands.upper.requires_subcommand = false

function subcommands.upper.process(input)
    return string.upper(input)
end

-- Reverse
subcommands.reverse = {}
subcommands.reverse.requires_subcommand = false

function subcommands.reverse.process(input)
    return string.reverse(input)
end

-- Title
subcommands.title = {}
subcommands.title.requires_subcommand = false

function subcommands.title.process(input)
    return strings.title(input)
end

return subcommands
