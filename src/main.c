#include "stdio.h"
#include "stdlib.h"
#include "string.h"

//vectors   
typedef struct
{
    int x;
    int y;
} Vector2;
#define Vector2(x, y) (Vector2){ x, y }

typedef struct
{
    int x;
    int y;
    int z;
} Vector3;
#define Vector3(x, y, z) (Vector3){ x, y, z }

//lists using define
#define List(type) struct { int count; type *items; }
#define list_push(list, item) list.items = (typeof(list.items))realloc(list.items, sizeof(list.items) + sizeof(item)); list.items[list.count++] = item
#define list_remove(list, index) list.items[index] = list.items[--list.count]

/*  example usage:
    List(char*) list = { 0 };
    list_push(list, "hello");
    list_push(list, "world");
    list_push(list, "!");
    for (int i = 0; i < list.count; i++)
    {
        printf("%s\n", list.items[i]);
    }
*/

//string

char* string_concat(char* a, char* b)
{
    char* result = (char*)malloc(strlen(a) + strlen(b) + 1);
    strcpy(result, a);
    strcat(result, b);
    return(result);
}

//main

long int current_frame = 0;
char* output = "";

//#define ucmd(input) ucmd(&output, input)
void ucmd(char* input)
{
    output = string_concat(output, input);
}

char* startup()
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
    
    ucmd("$system.layers.2.position:vector2 150 190;");
    
    ucmd("keyboard_add $system.keyboard #KEY_F2 0 @print_container_count;");
    ucmd("keyboard_add $system.keyboard #KEY_F3 0 @print_all;");
    ucmd("$system.layers.1.position.x:set 500;");
    //ucmd("$imgtxt:img_to_txt $image2;");
    return(output);
}

void receive_image(char** data, int width, int height)
{
    printf("image received: %d %d\n", width, height);
}

char* mainloop(char* input)
{
    output = "";
    input = (strlen(input) > 0) ? input : "";
    output = "layers_render $system.layers;eventor $system;frame;";
    return(output);
}
