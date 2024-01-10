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
    _ "system_new:system 0;";
    _ "load:image0 ../data/img/0.jpg;";
    _ "list_push $system.layers $image0;";
    while true do
        _ "layers_render $system.layers;";
        _ "eventor $system;";
        _ "frame 1;";
    end
    _ "close 0;"
end

example()