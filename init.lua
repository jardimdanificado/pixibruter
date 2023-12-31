local bruter = require("bruter")

local function example()
    local session = bruter.create()
    local _ = session.run;
    _ "system_new system;";
    _ "load image0 ../data/img/0.jpg;";
    _ "layer_new $system $image0;";
    _ "system_loop $system 0;"
    _ "close 0;"
    os.execute("sleep 2");
end

example()