tape:
  vhs usage.tape
  imv -s shrink tape.gif

punch *ARGS:
  zig build run -- {{ARGS}}

test:
  zig build test
