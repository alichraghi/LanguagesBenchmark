const expect = @import("std").testing.expect;

fn fib(n: u64) u64 {
    if (n <= 1) return n;
    return fib(n - 1) + fib(n - 2);
}

pub fn main() !void {
    try expect(fib(44) == 701408733);
}
