fib(x::Int64) = x <= 1 ? 1 : fib(x-1) + fib(x - 2)

# added a test case for you to run and benchmark it.
n = 1:20
for i in n
  println(fib(i))
end
