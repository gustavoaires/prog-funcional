posicao_maior l = (maior, get_posicao maior l 0) where maior = f_maior l

f_maior [x] = x
f_maior (x:y:xs)
    | x > y = f_maior (x:xs)
    | otherwise = f_maior (y:xs)

get_posicao x (y:ys) cont
    | x == y = cont
    | otherwise = get_posicao x ys (cont+1)