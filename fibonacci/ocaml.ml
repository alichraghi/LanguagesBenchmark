let rec fib n = 
  if n < 2 then n
  else fib(n - 1) + fib(n - 2)

let () =
    Printf.printf "%d\n" (fib 42)