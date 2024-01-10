local utils = require("lib.luatils.init");
local luapiper = require("lib.luapiper");

local bruter = {};

local function parse_it(command)
    command = utils.string.replace(command,";\n",";");
    return command;
end

bruter.create = function()
    local newsession = {};
    newsession.child = luapiper.PipeSession("pixilang", { "./src/entrypoint.pixi" });
    newsession.brute = function(str)
        newsession.child.send(newsession.child,str);
    end
    newsession.soft = function(str)
        newsession.child.send(newsession.child,parse_it(str));
    end
    newsession.dofile = function(path)
        local str = utils.file.load.text(path);
        newsession.brute(utils.string.replace(str,";\n",";"));
    end

    return newsession;
end

--example
local function example()
    local session = bruter.create()
    local _ = session.soft;
    
    local tstr = 
    [[system:system_new;
image0:load ../data/img/0.jpg;
image1:load ../data/img/1.jpg;
list_push $system.layers $image1;
list_push $system.layers $image0;
system.layers.3.position:vector2 150 190;
keyboard_add $system.keyboard #KEY_F2 0 @print_container_count;
system.layers.3.position.x:set 500;
system.layers.3.5.5:set #RED;]];
    local preparsed = parse_it(tstr);

    --the following are equivalent:
    session.dofile("./data/example.brute");--run a brute script from a file
    session.soft(tstr);--parse and run a brute script from a string
    session.brute(preparsed);--run a brute script from a string, without parsing it, this is faster


    while true do
        _ "layers_render $system.layers;";
        _ "eventor $system;";
        _ "frame;";
    end
    _ "close;"
end

example()