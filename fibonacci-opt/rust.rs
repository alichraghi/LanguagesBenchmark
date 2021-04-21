fn main() {
    println!("{}", fib(47));
}

#[no_mangle]
fn fib(n: u64) -> u64 {
    if n <= 1 { return n }
    return fib(n - 1) + fib(n - 2)
}