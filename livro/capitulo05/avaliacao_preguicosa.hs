n_divisiveis :: Int -> Int -> Int
n_divisiveis a 1 = 1
n_divisiveis a b | (mod a b == 0) = 1 + n_divisiveis a (b - 1)
                 | otherwise = n_divisiveis a (b - 1)

eh_primo :: Int -> Bool
eh_primo 0 = False
eh_primo 1 = True

eh_primo n | (n_divisiveis n n == 2) = True
           | otherwise = False

primeiro_primo :: [Int] -> Int
primeiro_primo (x:xs) | eh_primo x = x
                      | otherwise = primeiro_primo xs
