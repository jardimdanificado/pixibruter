local luapiper = require("lib.luapiper")

local bruter = {};

bruter.create = function()
    
    local newsession = {};
    newsession.child = luapiper.PipeSession("pixilang", { "./src/entrypoint.pixi" });
    newsession.run = function(str)
        newsession.child.send(newsession.child,str);
    end 
    return newsession;
end

--example
local function example()
    local session = bruter.create()
    local _ = session.run;
    _ "system_new system;";
    _ "load image0 ../data/img/0.jpg;";
    _ "layer_new $system $image0;";
    while true do
        _ "manual_loop $system;";
    end
    _ "close 0;"
end

example()