local luapiper = require("lib.luapiper")
local bruter = require("bruter")

local function example()
    local program = "pixilang"
    local args = { "./src/entrypoint.pixi" }

    local child = luapiper.PipeSession(program, args)
    --os.execute("sleep 2")
    --bruter.child:send("system_new system;");
    --bruter.system_new(child, "system", "data/config.ini");
    --child:send("print_int $system.config.height;");
    bruter.load("image0", "../data/img/0.jpg");
    bruter.layer_new("image0");
    bruter.system_loop();
    --bruter.child:send("system_loop $system 0;");
    print("image0 loaded\nfsafas\n");
    os.execute("sleep 2");
    bruter.close();
    
end

example()