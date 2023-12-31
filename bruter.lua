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

return bruter;