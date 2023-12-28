local luapiper = require("lib.luapiper")

local function example()
    local program = "pixilang"
    local args = { "./src/entrypoint.pixi" }

    local child = luapiper.PipeSession(program, args)
    child:send("clear #WHITE;print_int $test.a.b;frame 0;")
    while true do
        --local command = io.read()

        child:send("clear #WHITE;frame 0;")
    end

    child:close()
end

example()