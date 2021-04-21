if [[ $1 == "opt" ]]
    then
    gcc c.c -Ofast -o c
    g++ c++.cc -Ofast -o cpp
    rustc -C opt-level=3 rust.rs
    v -prod -autofree v.v
    #mys build
    odin build odin.odin -opt:3 -no-bounds-check
    ./dis.t ./odin fib > odin.opt.s
    ./dis.t ./rust fib > rust.opt.s
    ./dis.t ./cpp fib > cpp.opt.s
    ./dis.t ./c fib > c.opt.s
else
    gcc c.c -o c
    g++ c++.cc -o cpp
    rustc rust.rs
    v  -autofree v.v
    #mys build
    odin build odin.odin
    ./dis.t ./odin fib > odin.dbg.s
    ./dis.t ./rust fib > rust.dbg.s
    ./dis.t ./cpp fib > cpp.dbg.s
    ./dis.t ./c fib > c.dbg.s
fi
