-- INPUT: Lista u e um natural n OUTPUT: n-ésimo termo de u EX(S):
-- elemento 2 [2,7,3,9] ==> 3

-- forma alternativa de pegar o nésimo elemento da lista
-- elemento n l = l !! n

elemento n l = elemento_aux n 0 l

elemento_aux n x (a:l) | x == n = a
                       | x < n = elemento_aux n (x + 1) l
                       | otherwise = -1