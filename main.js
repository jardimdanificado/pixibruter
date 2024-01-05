const potpiper = require('./lib/nodepiper.js');
var command = "manual_loop $system;";

function main()
{
    let session = potpiper.pipeSession("pixilang", ["./src/entrypoint.pixi"])
    let $ = session.send;

    $("system_new system;");
    $("load image0 ../data/img/0.jpg;");
    $("layer_new $system $image0;");
    while(true)
    {
        $(command);
    }
}

main()