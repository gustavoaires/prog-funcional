par :: Int -> Bool
par x = mod x 2 == 0

constroi_lista0 = [ x * x | x <- [9..39], par x]
constroi_lista1 = [ x * x | x <- [9..39], par x, x > 55, x < 75 ]
constroi_lista2 = [ (x, y) | x <- [1..3], y <- ['a', 'b', 'c']]
constroi_lista3 = [ (x, y) | x <- ['a'..'z'], y <- [0..2]]
