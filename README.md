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

## Contributing

[WORK IN PROGRESS]

## License

[WORK IN PROGRESS]
