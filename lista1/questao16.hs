-- INPUT: Natural n e lista u
-- OUTPUT: Lista com os n menores elementos de u na ordem que aparecem em u
-- menores 3 [5,3,1,9,7,2] ==> [3,1,2]
-- menores 5 [6,1,2,3,4] ==> [6,1,2,3,4]
-- menores 4 [3,1,2] ==> [3,1,2]

-- OUTPUT desta funcao nao está na mesma ordem da lista u

menores n (x:xs) | n == 0 = []
                 | n > 0 && xs == [] = x : []
                 | n > 0 && menor x xs = x : menores (n-1) xs
                 | n > 0 && not (menor x xs) = menores n (xs ++ [x])
                 
menor x [y] = x <= y
menor x (y:ys) = x <= y && menor x ys