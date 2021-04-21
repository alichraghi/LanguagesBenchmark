require "big"

def fib(n)
  if n <= 1
    UInt64.new(1)
  else
    fib(n - 1) + fib(n - 2)
  end
end

puts fib(UInt64.new(47))