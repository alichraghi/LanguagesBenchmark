package main

import "core:fmt"

fibonacci :: proc(n: i64) -> i64 {
    if n <= 1 {
        return n;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

main :: proc() {
    fmt.println(fibonacci(47));
}