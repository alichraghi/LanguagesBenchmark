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
Nelua: #1
  Time (mean ± σ):      9.169 s ±  0.302 s    [User: 9.161 s, System: 0.000 s]
  Range (min … max):    8.937 s …  9.800 s    10 runs

Mys: #2
  Time (mean ± σ):      9.436 s ±  0.783 s    [User: 9.418 s, System: 0.003 s]
  Range (min … max):    8.539 s … 11.034 s    10 runs

C: #3
  Time (mean ± σ):      9.664 s ±  0.778 s    [User: 9.629 s, System: 0.011 s]
  Range (min … max):    8.651 s … 11.347 s    10 runs

C++: #4
  Time (mean ± σ):     10.223 s ±  0.596 s    [User: 10.216 s, System: 0.002 s]
  Range (min … max):    9.304 s … 11.336 s    10 runs
 
V: #5
  Time (mean ± σ):     10.645 s ±  1.087 s    [User: 10.633 s, System: 0.002 s]
  Range (min … max):    9.146 s … 12.453 s    10 runs
 
Odin: #6
  Time (mean ± σ):     11.949 s ±  0.048 s    [User: 11.928 s, System: 0.001 s]
  Range (min … max):   11.861 s … 11.997 s    10 runs

Rust: #7
  Time (mean ± σ):     12.545 s ±  0.652 s    [User: 12.507 s, System: 0.004 s]
  Range (min … max):   11.483 s … 13.688 s    10 runs

Ocaml: #8
  Time (mean ± σ):     16.266 s ±  1.432 s    [User: 16.028 s, System: 0.012 s]
  Range (min … max):   14.569 s … 18.582 s    10 runs

Crystal: #9
  Time (mean ± σ):     22.330 s ±  3.161 s    [User: 22.248 s, System: 0.012 s]
  Range (min … max):   18.272 s … 26.376 s    10 runs

Go: #10
  Time (mean ± σ):     22.714 s ±  1.019 s    [User: 22.656 s, System: 0.049 s]
  Range (min … max):   21.468 s … 24.240 s    10 runs

Haskell: #11
  Time (mean ± σ):     215.606 s ± 13.124 s    [User: 214.366 s, System: 0.562 s]
  Range (min … max):   202.465 s … 244.548 s    10 runs
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
Ocaml:
    definitely lost: 256 bytes in 1 blocks
    indirectly lost: 0 bytes in 0 blocks
    possibly lost: 3,936,288 bytes in 1 blocks
    still reachable: 3,561,797 bytes in 28 blocks
```