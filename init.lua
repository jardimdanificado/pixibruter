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
    _ "system:system_new;";
    _ "image0:load ../data/img/0.jpg;";
    _ "image1:load ../data/img/1.jpg;";
    _ "list_push $system.layers $image1;";
    _ "list_push $system.layers $image0;";
    _ "system.layers.3.position:vector2 150 190;";
    _ "keyboard_add $system.keyboard #KEY_F2 0 @print_container_count;";
    _ "system.layers.3.position.x:set 500;";
    
    while true do
        _ "layers_render $system.layers;";
        _ "eventor $system;";
        _ "frame;";
    end
    _ "close;"
end

example()