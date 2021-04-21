gcc c.c -Ofast -o c
g++ c++.cc -Ofast -o cpp
rustc -C opt-level=3 rust.rs
v -prod -autofree v.v
odin build odin.odin -opt:3 -no-bounds-check
ocamlc -ccopt 3 ocaml.ml -o ocaml
ghc haskell.hs -O3
crystal crystal.cr --release
#mys build

rm ocaml.cmi ocaml.cmo haskell.hi haskell.o
