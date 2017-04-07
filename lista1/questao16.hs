-- INPUT: Natural n e lista u
-- OUTPUT: Lista com os n menores elementos de u na ordem que aparecem em u
-- menores 3 [5,3,1,9,7,2] ==> [3,1,2]
-- menores 5 [6,1,2,3,4] ==> [6,1,2,3,4]
-- menores 4 [3,1,2] ==> [3,1,2]

menores n (x:xs) | n > 0 && menor x xs

menor x [y] = x <= y 
menor x (y:ys) = x <= y && menor x ys