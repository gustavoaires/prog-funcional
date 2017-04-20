-- INPUT: Lista de inteiros positivos, u
-- OUTPUT: Tupla de duas listas, (A, B), onde A e B são respectivamente 
-- compostos pelos inteiros ímpares e pares de u
-- EX(S):
-- splitints [1,2,3,4,5,6,7] => ([1,3,5,7],[2,4,6])

splitints l = splitints_aux l [] []

splitints_aux [x] l1 l2
    | mod x 2 == 0 = (l1, l2 ++ [x])
    | otherwise = (l1 ++ [x], l2)
splitints_aux (x:xs) l1 l2
    | mod x 2 == 0 = splitints_aux xs l1 (l2 ++ [x])
    | otherwise = splitints_aux xs (l1 ++ [x]) l2