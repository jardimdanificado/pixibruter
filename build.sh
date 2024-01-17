#!/bin/bash
pixilang -c ./src/entrypoint.pixi
rm -rf ./build
mkdir ./build
mv ./src/entrypoint.pixicode ./build/entrypoint.pixicode
cp -r ./data ./build/data
cp -r ./lib ./build/lib
cp init.lua ./build/init.lua
cp pixilang_config.ini ./build/pixilang_config.ini
cd build
mkdir src 
mv entrypoint.pixicode src/entrypoint.pixicode
luajit init.lua