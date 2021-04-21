## Run
```sh
cd fibonacci-opt
chmod +x bench.sh
./bench.sh
hyperfine ./c ./cpp ./odin ./rust
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
> Optimised With Assembly
```js 
C: #1
  Time (mean ± σ):      9.248 s ±  0.332 s    [User: 9.223 s, System: 0.007 s]
  Range (min … max):    8.794 s …  9.979 s    10 runs

C++: #2
  Time (mean ± σ):      9.528 s ±  0.518 s    [User: 9.522 s, System: 0.001 s]
  Range (min … max):    8.716 s … 10.167 s    10 runs
 
Odin: #3
  Time (mean ± σ):     11.934 s ±  0.057 s    [User: 11.922 s, System: 0.001 s]
  Range (min … max):   11.860 s … 12.025 s    10 runs

Rust: #4
  Time (mean ± σ):     12.428 s ±  1.579 s    [User: 12.160 s, System: 0.004 s]
  Range (min … max):   10.567 s … 13.930 s    10 runs
```