cstr = terralib.includec("string.h");

terra startup()
    var output:&int8 = "";
    cstr.strcat(output, "$image0:load ./data/img/0.jpg;");
    cstr.strcat(output, "$image1:load ./data/img/1.jpg;");
    cstr.strcat(output, "$image2:load ./data/img/2.jpeg;");
    cstr.strcat(output, "$layer0:layer $image0;");
    cstr.strcat(output, "$layer1:layer $image1;");
    cstr.strcat(output, "$layer2:layer $image2;");
    cstr.strcat(output, "list_push $system.layers $layer1;");
    cstr.strcat(output, "list_push $system.layers $layer0;");
    cstr.strcat(output, "list_push $system.layers $layer2;");
    cstr.strcat(output, "$system.layers.2.position:vector2 150 190;");    
    cstr.strcat(output, "keyboard_add $system.keyboard #KEY_F2 0 @print_container_count;");
    cstr.strcat(output, "keyboard_add $system.keyboard #KEY_F3 0 @print_all;");
    cstr.strcat(output, "$system.layers.1.position.x:set 500;");
    return(output);
end

terra mainloop()
    return("layers_render $system.layers;eventor $system;frame;");
end

--idk but this should export the functions but it doesn't
terralib.saveobj("src/main.so",{ main = startup, startup=startup, mainloop = mainloop})