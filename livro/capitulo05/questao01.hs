-- Retornar o maior elemento e sua posição relativa na lista

comprimento [] = 0
comprimento (a:x) = 1 + comprimento x

maior [a] = a
maior (a:b:x) | a > b = maior (a:x)
              | otherwise = maior (b:x)

posicao_maior_aux (a:x) n | a == maior (a:x) = n
                          | otherwise = posicao_maior_aux x (n + 1)

posicao_maior l = (maior l, posicao_maior_aux l 1)
