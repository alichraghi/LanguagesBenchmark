package main

import "core:fmt"

fibonacci :: proc(n: int) -> int {
    if n <= 1 {
        return n
    }
    return fibonacci(n-1) + fibonacci(n-2);
}

main :: proc() {
    fmt.println(fibonacci(47));
}