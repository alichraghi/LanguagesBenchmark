require "spec"

def fib(n)
  if n <= 1
    n
  else
    fib(n - 1) + fib(n - 2)
  end
end

fib(44).should eq(701408733)