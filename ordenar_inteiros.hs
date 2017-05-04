-- ordernar lista de inteiros

ordena [] = []
ordena [a] = [a]
ordena (x:xs) 
    | menor x xs = x : ordena xs
    | otherwise = ordena (xs ++ [x])

menor x [y] = x <= y
menor x (y:ys) = x <= y && menor x ys