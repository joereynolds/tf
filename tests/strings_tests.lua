local luaunit = require "luaunit"
local strings = require "./src/strings"

function test_string_split_brings_back_correct_results()
    local actual = strings.split("this is my test")
    local expected = {'this', 'is', 'my', 'test'}
    luaunit.assertEquals(actual, expected)
end

function test_string_join()
    local actual = strings.join("this is my test", ":")
    local expected = "this:is:my:test"
    luaunit.assertEquals(actual, expected)
end

function test_string_title_uppercases_the_first_character()
    local actual = strings.title("jane doe")
    local expected = "Jane Doe"
    luaunit.assertEquals(actual, expected)
end

function test_string_prefixes()
    local actual = strings.prefix("jective", "ad")
    local expected = "adjective"
    luaunit.assertEquals(actual, expected)
end

function test_string_suffixes()
    local actual = strings.suffix("pain", "ful")
    local expected = "painful"
    luaunit.assertEquals(actual, expected)
end

function test_string_numbers()
    local actual = strings.numbers("hello07804howare you253233?")
    local expected = "07804253233"
    luaunit.assertEquals(actual, expected)
end

function test_string_snake_cases_strings()
    local actual = strings.snake("myCssVariable")
    local expected = "my_css_variable"
    luaunit.assertEquals(actual, expected)
end

function test_string_snake_cases_strings_with_a_capital_first_letter()
    local actual = strings.snake("MyCssVariable")
    local expected = "my_css_variable"
    luaunit.assertEquals(actual, expected)
end

function test_string_dash_cases_strings()
    local actual = strings.dash("myCssVariable")
    local expected = "my-css-variable"
    luaunit.assertEquals(actual, expected)
end

function test_string_dash_cases_strings_with_a_captial_first_letter()
    local actual = strings.dash("MyCssVariable")
    local expected = "my-css-variable"
    luaunit.assertEquals(actual, expected)
end

os.exit(luaunit.LuaUnit.run())
