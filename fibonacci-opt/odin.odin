package main

import "core:fmt"

@(link_name="fib")
fib :: proc(n: u64) -> u64 {
    if n <= u64(1) {
        return n;
    }
    return fib(n - u64(1)) + fib(n - u64(2));
}

main :: proc() {
    fmt.println(fib(47));
}