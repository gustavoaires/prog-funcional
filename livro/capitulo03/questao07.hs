fatorial n | n == 0 = 1
           | otherwise = n * fatorial (n - 1)

combinacao m n = (fatorial m) / ((fatorial n) * (fatorial (m - n)))
