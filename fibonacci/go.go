package main

func fib(n uint64) uint64 {
    if n <= 1 {
        return n
    }
    return fib(n - 1) + fib(n - 2)
}

func main() {
	if fib(44) != 701408733 {
        panic("assertion failed")
    }
}