local luapiper = require("lib.luapiper")
local bruter = require("bruter")

local function example()
    local program = "pixilang"
    local args = { "./src/entrypoint.pixi" }

    local child = luapiper.PipeSession(program, args)
    --os.execute("sleep 2")
    child:send("system_new system;");
    --child:send("print_int $system.config.height;");
    child:send("load image0 ../data/img/0.jpg;");
    child:send("layer_new $system $image0;");
    child:send("system_loop $system 0;")
    print("image0 loaded\nfsafas\n")
    os.execute("sleep 2") 
    child:close()
end

example()