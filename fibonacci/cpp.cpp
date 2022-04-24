#include <cstdint>
#include <assert.h>

uint64_t fib(uint64_t n)
{
    if (n <= 1)
        return n;
    return fib(n - 1) + fib(n - 2);
}

int main()
{
    assert(fib(44) == 701408733);
    return 0;
}