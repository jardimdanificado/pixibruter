const { spawn } = require('child_process');

class NodePiper {
  static pipe() {
    const pipe = require('stream').Duplex();
    pipe._read = () => {};
    pipe._write = (chunk, encoding, next) => {
      pipe.push(chunk);
      next();
    };
    return pipe;
  }

  static pipeSession(program, args) {
    const child = {};
    const pipe = NodePiper.pipe();

    child.process = spawn(program, args);

    child.process.stdin.on('error', (err) => {
      console.error('Error writing to child process:', err);
    });

    child.process.stdout.pipe(pipe);

    child.close = function () {
      child.process.stdin.end();
      child.process.kill();
    };

    child.send = function (message) {
      child.process.stdin.write(message);
    };

    return child;
  }
}

module.exports = NodePiper;
