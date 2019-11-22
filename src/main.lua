#!/usr/bin/env lua

local commands = require "./src/subcommands/subcommands"

local subcommand = arg[1]
local subcommand_argument = arg[2]

local usage = [[
Usage: tf SUBCOMMAND [SUBCOMMAND_ARGUMENT]
Example: echo 'cat!' | tf upper
Transforms text through various filters, must be used via stdin.

Options:
  -h, --help  Display this help

Available commands:
  join     Joins text
  lower    Lowercases text
  numbers  Gets all numbers from text
  prefix   Prefixes text
  reverse  Reverses text
  strip    Removes characters from text
  suffix   Suffixes text
  title    Titlecases text
  upper    Uppercases text]]

if not subcommand or subcommand == '--help' or subcommand == '-h' then
    return print(usage)
end

local user_input = io.input(io.stdin):read()

for command, _ in pairs(commands) do
    if subcommand == command then
        if commands[command].requires_subcommand then
            if not subcommand_argument then
                return print(commands[command].usage)
            end
            return print(commands[command].process(user_input, subcommand_argument))
        end
        return print(commands[command].process(user_input))
    end
end
