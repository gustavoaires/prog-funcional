fat n | n == 0 = 1
      | otherwise = n * fat(n - 1)

my_e x n | n == 1 = 1
         | otherwise = x ** (n - 1) / fat (n - 1) + my_e x (n - 1)