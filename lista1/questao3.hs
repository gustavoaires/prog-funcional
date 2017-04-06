-- INPUT: Um natural n OUTPUT: O fatorial de n

fat n | n == 0 = 1
      | otherwise = n * fat (n - 1)