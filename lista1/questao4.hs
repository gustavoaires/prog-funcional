-- INPUT: Inteiro positivo n
-- OUTPUT: n-ésimo termo da sequência de Fibonacci (iniciando em com 0 e 1)

fib n | n == 0 = 0
      | n == 1 = 1
      | otherwise = fib (n-1) + fib (n-2)