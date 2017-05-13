del_posicao_n (a:x) n | n == 1 = x
                      | otherwise = a : del_posicao_n x (n - 1)
