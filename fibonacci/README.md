## Benchmark Yourself
```sh
cd fibonacci
# Build binaries
./build.sh
# Benchmark Execution Time
hyperfine bin/*
```

## Environment
**System Info:**
```rs
CPU: Core i7 4600U
RAM: 8GB DDR3
DISK: ADATA SSD
```
**Compilers Version**
gcc: `11.2.1`
clang: `13.0.0`
zig: `0.9.1`
odin: `dev-2022-04`
v: `0.2.4`
ocaml: `4.12.0`
rust: `1.62.0-nightly`
nelua: `0.2.0-dev`
go: `1.16.15`
crystal: `1.4.1`

## Execution Time:
```js
Benchmark 1: bin/clang-c
  Time (mean ± σ):      2.862 s ±  0.170 s    [User: 2.820 s, System: 0.003 s]
  Range (min … max):    2.631 s …  3.279 s    10 runs
 
Benchmark 2: bin/clang-cpp
  Time (mean ± σ):      2.771 s ±  0.155 s    [User: 2.731 s, System: 0.004 s]
  Range (min … max):    2.624 s …  3.103 s    10 runs
 
Benchmark 3: bin/crystal
  Time (mean ± σ):      4.632 s ±  0.297 s    [User: 4.567 s, System: 0.008 s]
  Range (min … max):    4.297 s …  5.329 s    10 runs
 
Benchmark 4: bin/gcc-c
  Time (mean ± σ):      1.969 s ±  0.047 s    [User: 1.939 s, System: 0.003 s]
  Range (min … max):    1.939 s …  2.091 s    10 runs
 
Benchmark 5: bin/gcc-cpp
  Time (mean ± σ):      1.971 s ±  0.047 s    [User: 1.946 s, System: 0.002 s]
  Range (min … max):    1.940 s …  2.096 s    10 runs
 
Benchmark 6: bin/go
  Time (mean ± σ):      5.869 s ±  0.213 s    [User: 5.809 s, System: 0.014 s]
  Range (min … max):    5.686 s …  6.309 s    10 runs
 
Benchmark 7: bin/nelua
  Time (mean ± σ):      1.977 s ±  0.021 s    [User: 1.954 s, System: 0.003 s]
  Range (min … max):    1.942 s …  2.011 s    10 runs
 
Benchmark 8: bin/ocaml
  Time (mean ± σ):     29.368 s ±  1.161 s    [User: 29.145 s, System: 0.018 s]
  Range (min … max):   27.892 s … 31.175 s    10 runs
 
Benchmark 9: bin/odin
  Time (mean ± σ):      2.420 s ±  0.035 s    [User: 2.408 s, System: 0.002 s]
  Range (min … max):    2.348 s …  2.486 s    10 runs
 
Benchmark 10: bin/rust
  Time (mean ± σ):      2.567 s ±  0.048 s    [User: 2.547 s, System: 0.003 s]
  Range (min … max):    2.518 s …  2.662 s    10 runs
 
Benchmark 11: bin/v
  Time (mean ± σ):      1.865 s ±  0.037 s    [User: 1.855 s, System: 0.001 s]
  Range (min … max):    1.809 s …  1.914 s    10 runs
 
Benchmark 12: bin/zig
  Time (mean ± σ):      2.402 s ±  0.036 s    [User: 2.382 s, System: 0.003 s]
  Range (min … max):    2.361 s …  2.468 s    10 runs

'bin/v' ran
  1.06 ± 0.03 times faster than 'bin/gcc-c'
  1.06 ± 0.03 times faster than 'bin/gcc-cpp'
  1.06 ± 0.02 times faster than 'bin/nelua'
  1.29 ± 0.03 times faster than 'bin/zig'
  1.30 ± 0.03 times faster than 'bin/odin'
  1.38 ± 0.04 times faster than 'bin/rust'
  1.49 ± 0.09 times faster than 'bin/clang-cpp'
  1.53 ± 0.10 times faster than 'bin/clang-c'
  2.48 ± 0.17 times faster than 'bin/crystal'
  3.15 ± 0.13 times faster than 'bin/go'
  15.75 ± 0.70 times faster than 'bin/ocaml'
```
