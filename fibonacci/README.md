## Run
```sh
cd fibonacci
chmod +x bench.sh
./bench.sh # or `./bench.sh opt` for optimisation
hyperfine ./c ./cpp ./odin ./v ./rust
valgrind ./c
valgrind ./cpp
(valgrind ...)
```
## Result In My Machine
**My Machine System Info:**
```py
CPU: Core i7 4600U
RAM: 8GB DDR3
GPU: Intel HD 4400
HARD: HDD
```

## HyperFine Result:
> No Optimisation
```js 
Odin: #1
  Time (mean ± σ):     21.124 s ±  0.055 s    [User: 21.091 s, System: 0.002 s]
  Range (min … max):   20.993 s … 21.183 s    10 runs

C++: #2
  Time (mean ± σ):     27.051 s ±  0.041 s    [User: 26.995 s, System: 0.008 s]
  Range (min … max):   26.998 s … 27.141 s    10 runs

C: #3
  Time (mean ± σ):     27.064 s ±  0.139 s    [User: 27.030 s, System: 0.003 s]
  Range (min … max):   26.926 s … 27.389 s    10 runs
 
V: #4
  Time (mean ± σ):     38.343 s ±  2.064 s    [User: 38.226 s, System: 0.032 s]
  Range (min … max):   35.403 s … 41.767 s    10 runs
 
Rust: Failed With 'thread 'main' panicked at 'attempt to add with overflow', rust.rs:7:12' Error
Mys: <No Optimisation> Not Supported Yet
```
> With Optimisation
```js 
Mys: #1
  Time (mean ± σ):      9.497 s ±  0.598 s    [User: 9.472 s, System: 0.009 s]
  Range (min … max):    8.870 s … 10.838 s    10 runs

C: #2
  Time (mean ± σ):      9.673 s ±  0.608 s    [User: 9.660 s, System: 0.004 s]
  Range (min … max):    8.874 s … 10.429 s    10 runs

C++: #3
  Time (mean ± σ):     10.752 s ±  1.199 s    [User: 10.731 s, System: 0.010 s]
  Range (min … max):    9.286 s … 13.051 s    10 runs
 
V: #4
  Time (mean ± σ):     10.885 s ±  1.776 s    [User: 10.868 s, System: 0.005 s]
  Range (min … max):    9.032 s … 13.701 s    10 runs
 
Odin: #5
  Time (mean ± σ):     12.127 s ±  0.555 s    [User: 12.106 s, System: 0.007 s]
  Range (min … max):   11.664 s … 13.618 s    10 runs

Rust: #6
  Time (mean ± σ):     13.983 s ±  0.303 s    [User: 13.962 s, System: 0.005 s]
  Range (min … max):   13.769 s … 14.662 s    10 runs
```

## Memory Leaks Result (Valgrind):
> No Optimisation

> Note: With Optimisation Is Same
```js
C:
    No Leaks
C++:
    No Leaks
Odin:   
    No Leaks
Rust:
    still reachable: 205 bytes in 5 blocks
Mys:
    possibly lost: 288 bytes in 1 blocks
    still reachable: 760 bytes in 6 blocks
V:
    still reachable: 17,256 bytes in 18 blocks
```