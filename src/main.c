#include "stdio.h"

char* main() 
{
    return("$system:system_new;$image0:load ./data/img/0.jpg;$image1:load ./data/img/1.jpg;list_push $system.layers $image1;list_push $system.layers $image0;$system.layers.3.position:vector2 150 190;keyboard_add $system.keyboard #KEY_F2 0 @print_container_count;$system.layers.3.position.x:set 500;$system.layers.3.5.5:set #RED;");
}
