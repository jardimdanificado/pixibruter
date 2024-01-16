# bruter

## Description

a pixilang compatibility layer to be used from other languages via child_process, a intermediate easy-to-parse language is used to comunicate between the pixilang and the host process.

## Table of Contents

- [Installation](#installation)
- [Types](#types)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Installation

[YET TO WRITE INSTALATTION BUT IS PRETTY STRAIGHTFORWARD](LOOK AT RELEASES AND `init.lua` AND `main.js` AND SUCH)

## Pixilang

Global Objects: variables, functions, constants.

## Types

- `#constant` = args that starts with #, take a look src/ffi.pixi to check avaliable constants, constants are stored in "constants"

- `$variable` = args that starts with $, can be anything, variables are stored in "variables"

- `@callback` = args that starts with @, default functions, those can only be defined before compiling and must be written in pixilang, all the functions avaliable are also avaliable as callback and they are stored under "functions"  

- `!procedure` = args that starts with !, are always arrays of strings(array of INT8), procedures are pre-parsed brut scripts usually loaded from a file, procedures are stored in "procedures"

- `&direct` = args that starts with &, can be any type, the difference between this and $variable is that this one have all the contents of "functions" and "constants" too but does not share the contents with "variables", this is the only storage that can be parsed in direct mode, but it can be accessed from default mode like any other storage, directs are stored in "directs"

- `number` = args that starts with 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 or -

- `string` = any other args

## Usage

take a look at pixilang docs and src/ffi.pixi to get better understanding of the functions and usage


- argless functions:

`function;`


- returnless function:

`function arg1 arg2...;`


- function which return goes to $target_variable (":" denotes a return, the target variable must be on the left):

`target_variable:function ...;`


- argless function which return goes to $target_variable:

`target_variable:function;`


- variables always starts with $:

`function $variable_1 $variable_2 ...;`


- constants always starts with #:

`function #constant_1 #constant_2 ...;`


- callbacks always starts with @:

`function @callback_1 @callback_2 ...;`

## Direct Mode

[YET TO BE IMPLEMENTED, WORK IN PROGRESS]

direct mode is a simpler interpreter that behave just like the default interpreter, except that it does not deduce the type of the args neither have diferents storage types(variables, constants, functions, procedures), in direct mode everything is stored, and must be accessed from &, direct and default can be used at the same time but be careful, as direct mode cannot parse the default storages(!, @, #, $) while default interpreter can access direct storage(&) like any other, direct mode is designed to be faster than the default interpreter.

## Contributing

[WORK IN PROGRESS]

## License

[WORK IN PROGRESS]
