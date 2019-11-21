local luaunit = require "luaunit"


function test_from_cli()
    local tests = {
        upper = {
            command = 'echo "cat" | tf upper', 
            expected = 'CAT'
        },
        lower = {
            command = 'echo "CAT" | tf lower', 
            expected = 'cat'
        },
        join = {
            command = 'echo "0800 00 1066" | tf join -', 
            expected = '0800-00-1066'
        },
        reverse = {
            command = 'echo "natas" | tf reverse', 
            expected = 'satan'
        },
        prefix = {
            command = 'echo "jective" | tf prefix ad', 
            expected = 'adjective'
        },
        suffix = {
            command = 'echo "adjecti" | tf suffix ve', 
            expected = 'adjective'
        },
        title = {
            command = 'echo "mr reynolds" | tf title', 
            expected = 'Mr Reynolds'
        },
        strip = {
            command = 'echo "hexllxox thexrex" | tf strip x', 
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
