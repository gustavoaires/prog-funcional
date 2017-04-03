unico x u = unico_aux x u 0

unico_aux x (a:u) cont | x == a && u == [] && cont == 0 = True
                       | x /= a && u == [] && cont == 1 = True
                       | x == a && u /= [] = unico_aux x u (cont+1)
                       | x /= a && u /= [] = unico_aux x u cont
                       | otherwise = False