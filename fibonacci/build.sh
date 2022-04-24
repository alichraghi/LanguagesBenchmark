#!/bin/bash
set -e -x

mkdir -p bin
mkdir -p cache

# C
gcc c.c -Ofast -o bin/gcc-c
clang c.c -Ofast -o bin/clang-c

# C++
g++ cpp.cpp -Ofast -o bin/gcc-cpp
clang++ cpp.cpp -Ofast -o bin/clang-cpp

# Rust
rustc -C opt-level=3 -o bin/rust rust.rs

# Zig
zig build-exe --cache-dir cache/zig-cache -femit-bin=bin/zig -O ReleaseFast zig.zig

# Odin
odin build odin.odin -file -opt:3 -no-bounds-check -out:bin/odin

# Go
go build -o bin/go go.go

# V
v -prod -autofree v.v -o bin/v

# Ocaml
ocamlc -ccopt 3 ocaml.ml -o bin/ocaml
rm ocaml.cmi ocaml.cmo

# Crystal
crystal build --release -o bin/crystal crystal.cr

# Nelua
nelua nelua.nelua -r -M -o bin/nelua
