-- INPUT: Natural n e lista u
-- OUTPUT: Lista com os n menores elementos de u na ordem que aparecem em u
-- menores 3 [5,3,1,9,7,2] ==> [3,1,2]
-- menores 5 [6,1,2,3,4] ==> [6,1,2,3,4]
-- menores 4 [3,1,2] ==> [3,1,2]

menores n u | u == [] = []
            | otherwise = menores_aux n u 0

menores_aux n [x] cont = [x]
menores_aux n (x:xs) cont | cont == (n-1) = []
                          | x == menor (x:xs) && cont <= (n-2) && xs /= [] = x : menores_aux n xs (cont+1)
                          | x /= menor (x:xs) && cont < (n-2) && xs /= [] = menores_aux n xs cont
                          | x == menor (x:xs) && cont < (n-2) && xs == [] = x : []
                          -- | otherwise = x : menores_aux n xs (cont+1)
menor [x] = x
menor (x:xs) | x < menor xs = x
             | otherwise = menor xs

-- remove_menor [] = []
-- remove_menor (x:xs) | x == menor (x:xs) = xs
--                     | otherwise = x : remove_menor xs