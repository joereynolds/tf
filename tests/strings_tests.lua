local luaunit = require "luaunit"

local kebab    = require "./src/subcommands/kebab"
local join    = require "./src/subcommands/join"
local numbers = require "./src/subcommands/numbers"
local prefix  = require "./src/subcommands/prefix"
local snake   = require "./src/subcommands/snake"
local strings = require "./src/strings"
local strip   = require "./src/subcommands/strip"
local suffix  = require "./src/subcommands/suffix"
local title   = require "./src/subcommands/title"

function test_string_split_brings_back_correct_results()
    local actual = strings.split("this is my test")
    local expected = {'this', 'is', 'my', 'test'}
    luaunit.assertEquals(actual, expected)
end

function test_string_join()
    local actual = join.process("this is my test", ":")
    local expected = "this:is:my:test"
    luaunit.assertEquals(actual, expected)
end

function test_string_title_uppercases_the_first_character()
    local actual = title.process("jane doe")
    local expected = "Jane Doe"
    luaunit.assertEquals(actual, expected)
end

function test_string_prefixes()
    local actual = prefix.process("jective", "ad")
    local expected = "adjective"
    luaunit.assertEquals(actual, expected)
end

function test_string_suffixes()
    local actual = suffix.process("pain", "ful")
    local expected = "painful"
    luaunit.assertEquals(actual, expected)
end

function test_string_numbers()
    local actual = numbers.process("hello07804howare you253233?")
    local expected = "07804253233"
    luaunit.assertEquals(actual, expected)
end

function test_string_snake_cases_strings()
    local actual = snake.process("myCssVariable")
    local expected = "my_css_variable"
    luaunit.assertEquals(actual, expected)
end

function test_string_snake_cases_strings_with_a_capital_first_letter()
    local actual = snake.process("MyCssVariable")
    local expected = "my_css_variable"
    luaunit.assertEquals(actual, expected)
end

function test_string_kebab()
    local actual = kebab.process("myCssVariable")
    local expected = "my-css-variable"
    luaunit.assertEquals(actual, expected)
end

function test_string_kebab_cases_strings_with_a_captial_first_letter()
    local actual = kebab.process("MyCssVariable")
    local expected = "my-css-variable"
    luaunit.assertEquals(actual, expected)
end

os.exit(luaunit.LuaUnit.run())
