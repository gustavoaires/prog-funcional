-- fib 0 = 0
-- fib 1 = 1
-- fib n = fib(n - 1) + fib(n - 2)

fib n = (1 / sqrt(5)) * (((1+sqrt(5)/2)**n) - ((1-sqrt(5)/2)**n))