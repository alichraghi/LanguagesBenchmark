if [[ $1 == "opt" ]]
    then
    gcc c.c -Ofast -o c
    g++ c++.cc -Ofast -o cpp
    rustc -C opt-level=3 rust.rs
    v -prod -autofree v.v
    #mys build
    ~/Odin/odin build odin.odin -opt:3 -no-bounds-check
else
    gcc c.c -o c
    g++ c++.cc -o cpp
    rustc rust.rs
    v v.v
    #mys build
    ~/Odin/odin build odin.odin
fi