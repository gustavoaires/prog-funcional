isPalind [] = True
isPalind [a] = True
isPalind (x:xs) 
    | (last xs) == x = isPalind (init xs)
    | otherwise = False