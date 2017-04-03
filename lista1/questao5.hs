-- forma alternativa de pegar o nésimo elemento da lista
-- elemento n l = l !! n

elemento :: Int -> [Int] -> Int
elemento n l = elemento_aux n 0 l

elemento_aux :: Int -> Int -> [Int] -> Int
elemento_aux n x (a:l) | length l == 0 = -1
                       | x == n = a
                       | x < n = elemento_aux n (x + 1) l
                       | otherwise = -1