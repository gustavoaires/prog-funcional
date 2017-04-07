-- INPUT: Lista u
-- OUTPUT: total de elementos de u. Não use função length.

total [] = 0
total (x:xs) = 1 + total xs 