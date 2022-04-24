fn fib(n u64) u64 {
	if n <= 1 { return n }
	return fib(n - 1) + fib(n - 2)
}

fn main() {
	if fib(44) != 701408733 {
		panic('assertion failed')
	}
}