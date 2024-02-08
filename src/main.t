c = terralib.includecstring([[
#include <stdlib.h>
#include <stdio.h>

char* output;

void _ucmd(char* str) 
{
    //concatenando strings manualmente
    int current_size = 0;
    while(output[current_size] != 0) 
    {
        current_size++;
    }
    for(int i = 0; i < strlen(str); i++) 
    {
        output[current_size + i] = str[i];
    }
    output[current_size + strlen(str)] = 0;
}

char* cmdget()
{
    return output;
}

void cmdreset()
{
    output[0] = 0;
}

void cmdinit(int output_size)
{
    output = (char*)malloc(output_size);
    output[0] = 0;
}
]]);

ucmd = c._ucmd;
init = c.cmdinit;
done = c.cmdget;
reset = c.cmdreset;

terra startup():&int8
    init(4096);--init the output buffer with 4096 bytes
    ucmd("$image0:load ./data/img/0.jpg;");
    ucmd("$image1:load ./data/img/1.jpg;");
    ucmd("$image2:load ./data/img/2.jpeg;");
    ucmd("$layer0:layer $image0;");
    ucmd("$layer1:layer $image1;");
    ucmd("$layer2:layer $image2;");
    ucmd("list_push $system.layers $layer1;");
    ucmd("list_push $system.layers $layer0;");
    ucmd("list_push $system.layers $layer2;");
    ucmd("$system.layers.2.position:vector2 150 190;");    
    ucmd("keyboard_add $system.keyboard #KEY_F2 0 @print_container_count;");
    ucmd("keyboard_add $system.keyboard #KEY_F3 0 @print_all;");
    ucmd("$system.layers.1.position.x:set 500;");
    return(done());
end

terra mainloop():&int8
    reset();
    ucmd("layers_render $system.layers;eventor $system;frame;")
    return(done());
end

--this will save the object file
terralib.saveobj("src/main.so",{startup=startup, mainloop = mainloop}, nil, nil, false)