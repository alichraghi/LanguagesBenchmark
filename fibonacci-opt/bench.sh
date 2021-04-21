gcc c.c -Ofast -o c
g++ c++.cc -Ofast -o cpp
rustc -C opt-level=3 rust.rs
v -prod -autofree v.v
#mys build
odin build odin.odin -opt:3 -no-bounds-check
ocamlc -ccopt 3 ocaml.ml -o ocaml
ghc haskell.hs -O3

mkdir -p $opt
./dis.t ./odin fib >./odin.$opt.s
./dis.t ./rust fib >./rust.$opt.s
./dis.t ./cpp fib >./cpp.$opt.s
./dis.t ./c fib >./c.$opt.s

rm ocaml.cmi ocaml.cmo haskell.hi haskell.o
#rm odin rust cpp c
