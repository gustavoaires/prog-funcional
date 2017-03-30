primo_aux a b | b == 1 = True
              | mod a b == 0 = False
              | otherwise = primo_aux a (b - 1)

-- compare the values just up to n sqrt

primo n = primo_aux n (n - 1)