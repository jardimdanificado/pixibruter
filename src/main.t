--package.terrapath = package.terrapath .. ";src/?.t;src/?/?.t;src/?/?/?.t"
package.terrapath = package.terrapath .. ";lib/?.t;lib/?/?.t;lib/?/?/?.t;"

local buffer_max_size = 4096

local String = require 'lib.string'
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

    var buffer:String = String.new();
    buffer:concat(String.fromString("image0:load ./data/img/0.jpg;"));
    buffer:concat(String.fromString("image1:load ./data/img/1.jpg;"));
    buffer:concat(String.fromString("image2:load ./data/img/2.jpeg;"));
    buffer:concat(String.fromString("layer0:layer $image0;"));
    buffer:concat(String.fromString("layer1:layer $image1;"));
    buffer:concat(String.fromString("layer2:layer $image2;"));
    buffer:concat(String.fromString("list_push $system.layers $layer1;"));
    buffer:concat(String.fromString("list_push $system.layers $layer0;"));
    buffer:concat(String.fromString("list_push $system.layers $layer2;"));
    buffer:concat(String.fromString("system.layers.2.position:vector2 150 190;"));
    buffer:concat(String.fromString("keyboard_add $system.keyboard $KEY_F2 0 $print_container_count;"));
    buffer:concat(String.fromString("keyboard_add $system.keyboard $KEY_F3 0 $print_all;"));
    buffer:concat(String.fromString("system.layers.1.position.x:set 500;"));
    --c.printf("buffer = %s\n",buffer.array);
    return(buffer.array);
end

terra mainloop():&int8
    return("layers_render $system.layers;eventor $system;frame;");
end

--this will save the object file
terralib.saveobj("src/main.so",{startup=startup, mainloop = mainloop}, nil, nil, false)