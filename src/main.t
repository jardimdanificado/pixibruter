--package.terrapath = package.terrapath .. ";src/?.t;src/?/?.t;src/?/?/?.t"
package.terrapath = package.terrapath .. ";lib/?.t;lib/?/?.t;lib/?/?/?.t;"

local buffer_max_size = 4096

local String = require 'std.string'
buffer = global(String);

c = terralib.includecstring([[
#include <stdlib.h>
#include <stdio.h>

char buffer[]] .. buffer_max_size ..  [[];

char* tocstr(char* b) 
{
    for(int i = 0; i < ]] .. buffer_max_size ..  [[; i++)
    {
        buffer[i] = b[i];
        if(b[i] == 0)
        {
            break;
        }
    }
    return buffer;
}
]]);

tocstr = c.tocstr;

terra startup():&int8

    var buffer:String;
    buffer = buffer + "$image0:load ./data/img/0.jpg;";
    buffer = buffer + "$image1:load ./data/img/1.jpg;";
    buffer = buffer + "$image2:load ./data/img/2.jpeg;";
    buffer = buffer + "$layer0:layer $image0;";
    buffer = buffer + "$layer1:layer $image1;";
    buffer = buffer + "$layer2:layer $image2;";
    buffer = buffer + "list_push $system.layers $layer1;";
    buffer = buffer + "list_push $system.layers $layer0;";
    buffer = buffer + "list_push $system.layers $layer2;";
    buffer = buffer + "$system.layers.2.position:vector2 150 190;";
    buffer = buffer + "keyboard_add $system.keyboard #KEY_F2 0 @print_container_count;";
    buffer = buffer + "keyboard_add $system.keyboard #KEY_F3 0 @print_all;";
    buffer = buffer + "$system.layers.1.position.x:set 500;";
    --c.printf("buffer = %s\n",buffer.s);
    return(tocstr(buffer.s));
end

terra mainloop():&int8
    buffer.s = ""
    buffer = buffer + "layers_render $system.layers;eventor $system;frame;";
    return(tocstr(buffer.s));
end

--this will save the object file
terralib.saveobj("src/main.so",{startup=startup, mainloop = mainloop}, nil, nil, false)