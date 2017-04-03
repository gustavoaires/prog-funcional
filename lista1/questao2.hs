-- resposta da questao 1
menorDeDois x y | x <= y = x
                | otherwise = y

menorDeTres x y z | menorXY <= z = menorXY
                  | otherwise = z
                  where menorXY = menorDeDois x y