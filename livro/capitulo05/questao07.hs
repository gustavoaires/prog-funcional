-- retorna o valor da n-ésima posição em uma lista
comprimento [] = 0
comprimento (a:x) = 1 + comprimento x

posicao_aux p n (a:x) | n == p = a
                      | otherwise = posicao_aux p (n + 1) x

posicao p (a:x) | p > comprimento (a:x) = error ("posicao inexistente")
                | otherwise =  posicao_aux p 1 (a:x)
