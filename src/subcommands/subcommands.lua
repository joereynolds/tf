local subcommands = {}

subcommands.join = require "./src/subcommands/join"
subcommands.prefix = require "./src/subcommands/prefix"
subcommands.suffix = require "./src/subcommands/suffix"
subcommands.lower = require "./src/subcommands/lower"
subcommands.upper = require "./src/subcommands/upper"
subcommands.reverse = require "./src/subcommands/reverse"
subcommands.strip = require "./src/subcommands/strip"
subcommands.title = require "./src/subcommands/title"

return subcommands
