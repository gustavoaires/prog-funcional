-- primeiros n elementos de fibonacci
fib 1 = 1
fib 2 = 2
fib n = (fib (n - 1)) + (fib (n - 2))

fibonacci n | n == 0 = []
            | otherwise = fibonacci (n - 1) ++ [fib n]
