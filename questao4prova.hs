fib 0 = 0
fib 1 = 1
fib n = fib (n-2) + fib (n-1)

fib_aux n cont
    | n /= cont = fib cont : fib_aux n (cont+1)
    | otherwise = [fib n]

fibonacci n = fib_aux n 0