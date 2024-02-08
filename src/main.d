//not working will be fixed soon
import std.stdio;
import std.string;
import std.string : toStringz;
import core.stdc.stdlib;
import core.stdc.string;
import core.stdc.stdio : puts;

// Vectors
struct Vector2 {
    int x;
    int y;
}

struct Vector3 {
    int x;
    int y;
    int z;
}

// Main
long current_frame = 0;
string output = "";

void ucmd(string input) 
{
    output = output ~ input;
}

extern(C) immutable(char)* startup() 
{
    ucmd("$image0:load ./data/img/0.jpg;");
    ucmd("$image1:load ./data/img/1.jpg;");
    ucmd("$image2:load ./data/img/2.jpeg;");

    ucmd("$layer0:layer $image0;");
    ucmd("$layer1:layer $image1;");
    ucmd("$layer2:layer $image2;");

    ucmd("list_push $system.layers $layer1;");
    ucmd("list_push $system.layers $layer0;");
    ucmd("list_push $system.layers $layer2;");
    
    ucmd("$system.layers[2].position:vector2 150 190;");
    
    ucmd("keyboard_add $system.keyboard #KEY_F2 0 @print_container_count;");
    ucmd("keyboard_add $system.keyboard #KEY_F3 0 @print_all;");
    ucmd("$system.layers[1].position.x:set 500;");
    //ucmd("$imgtxt:img_to_txt $image2;");
    return output.toStringz();
}

extern(C) immutable(char)* mainloop(immutable(char)* input) {
    //output = null;
    //input = (input.length > 0) ? input : "";
    output = "layers_render $system.layers;eventor $system;frame;";
    return output.toStringz();
}


