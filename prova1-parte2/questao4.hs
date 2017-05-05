primo 1 = False
primo n = primo_aux n (div n 2)

primo_aux _ 1 = True
primo_aux n x
    | mod n x == 0 = False
    | otherwise = primo_aux n (x-1)