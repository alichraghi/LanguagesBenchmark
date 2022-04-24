package main

fib :: proc(n: u64) -> u64 {
    if n <= 1 {
        return n;
    }
    return fib(n - 1) + fib(n - 2);
}

main :: proc() {
    assert(fib(44) == 701408733);
}