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
    _ "system_new:system;";
    _ "load:image0 ../data/img/0.jpg;";
    _ "load:image1 ../data/img/1.jpg;";
    _ "list_push $system.layers $image1;";
    _ "list_push $system.layers $image0;";
    
    _ "vector2:system.layers.3.position 150 190;";
    _ "keyboard_add $system.keyboard #KEY_F2 0 @print_container_count;";
    --$system.layers[2].position = vector2(190,150);
    
    while true do
        _ "layers_render $system.layers;";
        _ "eventor $system;";
        _ "frame;";
    end
    _ "close;"
end

example()