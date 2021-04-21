
opt=$1

if [[ $opt == "opt" ]]
    then
    gcc c.c -Ofast -o c
    g++ c++.cc -Ofast -o cpp
    rustc -C opt-level=3 rust.rs
    v -prod -autofree v.v
    #mys build
    odin build odin.odin -opt:3 -no-bounds-check
    ocamlc -ccopt 3 ocaml.ml -o ocaml
    ghc haskell.hs -O3
else
    opt="dbg"
    gcc c.c -o c
    g++ c++.cc -o cpp
    rustc rust.rs
    v  -autofree v.v
    #mys build
    odin build odin.odin
    ocamlc ocaml.ml -o ocaml
    ghc haskell.hs
fi

mkdir -p $opt
./dis.t ./odin fib > ./$opt/odin.$opt.s
./dis.t ./rust fib > ./$opt/rust.$opt.s
./dis.t ./cpp fib  > ./$opt/cpp.$opt.s
./dis.t ./c fib    > ./$opt/c.$opt.s

rm ocaml.cmi ocaml.cmo haskell.hi haskell.o
#rm odin rust cpp c