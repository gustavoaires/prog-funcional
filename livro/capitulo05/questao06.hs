inserir_posicao_x :: [Int] -> Int -> Int -> [Int]
inserir_posicao_x [] _ _ = []
inserir_posicao_x (a:x) n p | n == 1 = p : a : x
                            | otherwise = a : inserir_posicao_x x (n-1) p
