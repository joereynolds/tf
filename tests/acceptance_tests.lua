local luaunit = require "luaunit"

function test_from_cli()
    local tests = {
        upper = {
            command = 'echo "cat" | ./src/main.lua upper',
            expected = 'CAT'
        },
        lower = {
            command = 'echo "CAT" | ./src/main.lua lower',
            expected = 'cat'
        },
        join = {
            command = 'echo "0800 00 1066" | ./src/main.lua join -',
            expected = '0800-00-1066'
        },
        reverse = {
            command = 'echo "natas" | ./src/main.lua reverse',
            expected = 'satan'
        },
        prefix = {
            command = 'echo "jective" | ./src/main.lua prefix ad',
            expected = 'adjective'
        },
        suffix = {
            command = 'echo "adjecti" | ./src/main.lua suffix ve',
            expected = 'adjective'
        },
        title = {
            command = 'echo "mr reynolds" | ./src/main.lua title',
            expected = 'Mr Reynolds'
        },
        strip = {
            command = 'echo "hexllxox thexrex" | ./src/main.lua strip x',
            expected = 'hello there'
        }
    }

    for key, _ in pairs(tests) do
        local handle = io.popen(tests[key].command)
        local actual = handle:read()
        luaunit.assertEquals(actual, tests[key].expected)
    end
end

os.exit(luaunit.LuaUnit.run())
