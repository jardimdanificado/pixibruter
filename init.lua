local utils = require("lib.luatils.init");
local luapiper = require("lib.luapiper");

local bruter = {};

local function parse_it(command)
    command = utils.string.replace(command,";\n",";");
    return command;
end

bruter.create = function()
    local newsession = {};
    newsession.child = luapiper.PipeSession("pixilang", { "./src/entrypoint.pixicode" });
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
    
    local tstr = utils.file.load.text("./data/example.brut");
    local preparsed = parse_it(tstr);

    --the following are equivalent:
    --session.dofile("./data/example.brut");--run a brute script from a file
    --session.soft(tstr);--parse and run a brute script from a string
    session.brute(preparsed);--run a brute script from a string, without parsing it, this is faster
    
    
    -- this need fixing
    --[[
        _ "$txt:read_file ../data/test.brut;";
        _ "print_string $txt;"
        _ "!test:procedure_parse $txt;";
        _ "print_string !test.0;"
    ]]
    
    
    session.brute("procedure_load ../data/test.brut test;");
    session.brute("procedure_run !test;");
    --session.brute("print_int 4;");
    _ "$a:set 50;";
    _ "if 1 > 0 @print_container_count;";
    while true do
        _ "layers_render $system.layers;";
        _ "eventor $system;";
        _ "frame;";
    end
    _ "close;"
end

example()