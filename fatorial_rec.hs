-- fat 0 = 1
-- fat n = n * fat(n - 1)

fat n | n == 0 = 1
      | otherwise = n * fat(n - 1)