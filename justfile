tape:
  vhs usage.tape
  imv -s shrink tape.gif

opus *ARGS:
  zig build run -- {{ARGS}}

test:
  zig build test
