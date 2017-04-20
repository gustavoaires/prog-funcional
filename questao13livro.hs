busca_sub [] _ = []
busca_sub inicio [x] 
    | existe_sub inicio x = [x]
    | otherwise = []
busca_sub inicio (x:xs)
    | existe_sub inicio x = x : busca_sub inicio xs
    | otherwise = busca_sub inicio xs

existe_sub [] x = True
existe_sub (y:ys) (x:xs)
    | y == x = existe_sub ys xs
    | otherwise = False