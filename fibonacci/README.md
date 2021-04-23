## Run
```sh
cd fibonacci
chmod +x bench.sh
./bench.sh
hyperfine ./c ./cpp ./odin ./v ./rust
valgrind ./c
valgrind ./cpp
(valgrind ...)
```
## Result In My Machine
**My Machine System Info:**
```rs
CPU: Core i7 4600U
RAM: 8GB DDR3
GPU: Intel HD 4400
HARD: HDD
```

## HyperFine Result:
```js 
C++: #1
  Time (mean ± σ):      8.994 s ±  0.521 s    [User: 8.974 s, System: 0.005 s]
  Range (min … max):    8.506 s … 10.025 s    10 runs

Nelua: #2
  Time (mean ± σ):      9.169 s ±  0.302 s    [User: 9.161 s, System: 0.000 s]
  Range (min … max):    8.937 s …  9.800 s    10 runs

Mys: #3
  Time (mean ± σ):      9.436 s ±  0.783 s    [User: 9.418 s, System: 0.003 s]
  Range (min … max):    8.539 s … 11.034 s    10 runs

C: #4
  Time (mean ± σ):      9.664 s ±  0.778 s    [User: 9.629 s, System: 0.011 s]
  Range (min … max):    8.651 s … 11.347 s    10 runs

Zig: #5
  Time (mean ± σ):     10.509 s ±  0.615 s    [User: 10.498 s, System: 0.003 s]
  Range (min … max):    9.884 s … 11.575 s    10 runs
 
V: #6
  Time (mean ± σ):     10.645 s ±  1.087 s    [User: 10.633 s, System: 0.002 s]
  Range (min … max):    9.146 s … 12.453 s    10 runs
 
Odin: #7
  Time (mean ± σ):     11.949 s ±  0.048 s    [User: 11.928 s, System: 0.001 s]
  Range (min … max):   11.861 s … 11.997 s    10 runs

Rust: #8
  Time (mean ± σ):     12.545 s ±  0.652 s    [User: 12.507 s, System: 0.004 s]
  Range (min … max):   11.483 s … 13.688 s    10 runs

Ocaml: #9
  Time (mean ± σ):     16.266 s ±  1.432 s    [User: 16.028 s, System: 0.012 s]
  Range (min … max):   14.569 s … 18.582 s    10 runs

Crystal: #10
  Time (mean ± σ):     22.330 s ±  3.161 s    [User: 22.248 s, System: 0.012 s]
  Range (min … max):   18.272 s … 26.376 s    10 runs

Go: #11
  Time (mean ± σ):     22.714 s ±  1.019 s    [User: 22.656 s, System: 0.049 s]
  Range (min … max):   21.468 s … 24.240 s    10 runs

NodeJS: #12
  Time (mean ± σ):     67.156 s ±  9.122 s    [User: 66.943 s, System: 0.030 s]
  Range (min … max):   43.678 s … 75.228 s    10 runs

Haskell: #13
  Time (mean ± σ):     215.606 s ± 13.124 s    [User: 214.366 s, System: 0.562 s]
  Range (min … max):   202.465 s … 244.548 s    10 runs
Pyhthon: #14
  More Than 20m
```

## Compile Time
```js
OcamlC:
  Time (mean ± σ):      69.4 ms ± 180.5 ms    [User: 8.4 ms, System: 5.6 ms]
  Range (min … max):    11.0 ms … 583.1 ms    10 runs
GCC:
  Time (mean ± σ):     127.0 ms ± 157.5 ms    [User: 64.9 ms, System: 12.3 ms]
  Range (min … max):    70.9 ms … 574.9 ms    10 runs
G++:
  Time (mean ± σ):      94.8 ms ±   7.3 ms    [User: 78.0 ms, System: 15.9 ms]
  Range (min … max):    87.2 ms … 123.9 ms    30 runs
Zig:
  Time (mean ± σ):     116.7 ms ± 317.9 ms    [User: 97.9 ms, System: 17.9 ms]
  Range (min … max):    12.6 ms … 1021.5 ms    10 runs
Go:
  Time (mean ± σ):     656.8 ms ± 1618.0 ms    [User: 147.5 ms, System: 64.6 ms]
  Range (min … max):    93.4 ms … 5260.1 ms    10 runs
GHC (Haskell):
  Time (mean ± σ):      1.226 s ±  3.472 s    [User: 156.3 ms, System: 44.2 ms]
  Range (min … max):    0.114 s … 11.107 s    10 runs
RustC:
  Time (mean ± σ):      1.752 s ±  4.505 s    [User: 301.4 ms, System: 87.3 ms]
  Range (min … max):    0.297 s … 14.572 s    10 runs
Odin:
  Time (mean ± σ):      3.393 s ±  0.512 s    [User: 3.073 s, System: 0.217 s]
  Range (min … max):    3.164 s …  4.847 s    10 runs
V:
  Time (mean ± σ):      3.586 s ±  0.854 s    [User: 3.180 s, System: 0.147 s]
  Range (min … max):    2.972 s …  5.634 s    10 runs
Crystal:
  Time (mean ± σ):     70.932 s ±  5.808 s    [User: 71.007 s, System: 0.332 s]
  Range (min … max):   64.797 s … 79.315 s    10 runs
```

## Memory Leaks Result (Valgrind):
```js
C:
    No Leaks
C++:
    No Leaks
Nelua:   
    No Leaks
Odin:   
    No Leaks
Zig:
    No Leaks
Go: 
    No Leaks
Haskell:
    still reachable: 156 bytes in 11 blocks
Rust:
    still reachable: 205 bytes in 5 blocks
V:
    still reachable: 17,256 bytes in 18 blocks
Mys:
    possibly lost: 288 bytes in 1 blocks
    still reachable: 760 bytes in 6 blocks
Crystal:
    definitely lost: 8,192 bytes in 1 blocks
    possibly lost: 864 bytes in 3 blocks
Python:
    possibly lost: 1,632 bytes in 3 blocks
    still reachable: 299,558 bytes in 132 blocks
NodeJS:
    definitely lost: 4,368 bytes in 4 blocks
    indirectly lost: 736 bytes in 23 blocks
    possibly lost: 1,824 bytes in 6 blocks
    still reachable: 1,355,215 bytes in 5,199 blocks of which reachable via heuristic:
    newarray: 3,528 bytes in 9 blocks
Ocaml:
    definitely lost: 256 bytes in 1 blocks
    possibly lost: 3,936,288 bytes in 1 blocks
    still reachable: 3,561,797 bytes in 28 blocks
```