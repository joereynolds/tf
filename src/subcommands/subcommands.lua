local subcommands = {}

subcommands.join = require "./src/subcommands/join"
subcommands.lower = require "./src/subcommands/lower"
subcommands.numbers = require "./src/subcommands/numbers"
subcommands.prefix = require "./src/subcommands/prefix"
subcommands.reverse = require "./src/subcommands/reverse"
subcommands.strip = require "./src/subcommands/strip"
subcommands.suffix = require "./src/subcommands/suffix"
subcommands.title = require "./src/subcommands/title"
subcommands.upper = require "./src/subcommands/upper"
subcommands.snake = require "./src/subcommands/snake"
subcommands.dash = require "./src/subcommands/dash"

return subcommands
