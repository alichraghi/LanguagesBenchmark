



let rec fib x = 
  if x < 3 then 1
  else fib(x-1) + fib(x-2)

let () =
    Printf.printf "%d\n" (fib 12)
