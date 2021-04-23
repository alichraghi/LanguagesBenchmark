const print = @import("std").debug.print;

fn fib(n: u64) u64 {
    if (n <= 1) return n;
    return fib(n - 1) + fib(n - 2);
}

pub fn main() void {
    print("{}\n", .{fib(47)});
}