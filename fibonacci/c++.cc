#include <iostream>

int fib(int n) {
    if (n <= 1) return n;
    return fib(n - 1) + fib(n - 2);
}

int main() {
    std::cout << fib(47) << std::endl;
    return 0;
}