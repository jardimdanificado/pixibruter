#!/bin/bash
pixilang -c ./boot.pixi
terra src/main.t 
#gcc -fPIC -shared -o src/main.so src/main.o src/main.c
#nelua -H src/main.nelua -o src/main.so
#gdc -fPIC -shared -o src/main.so src/main.d
rm -rf ./build
mkdir ./build
cp -r ./data ./build/data
cp pixilang_config.ini ./build/pixilang_config.ini
mv src/main.so ./build/data/main.so
mv boot.pixicode build/boot.pixicode
cd build
pixilang