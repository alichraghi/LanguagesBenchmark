gcc c.c -Ofast -o c
g++ c++.cc -Ofast -o cpp
rustc -C opt-level=3 rust.rs
odin build odin.odin -opt:3 -no-bounds-check
#mys build

./dis.t ./odin fib >./odin.s
./dis.t ./rust fib >./rust.s
./dis.t ./cpp fib >./cpp.s
./dis.t ./c fib >./c.s
