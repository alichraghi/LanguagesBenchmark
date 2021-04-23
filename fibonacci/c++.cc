#include <cstdint>
#include <cstdio>

std::uint64_t fib(std::uint64_t n) {
    if (n <= 1) return n;
    return fib(n - 1) + fib(n - 2);
}

int main() {
    std::printf("%ld\n", fib(47));
    return 0;
}