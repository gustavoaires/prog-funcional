-- INPUT: Três números, x, y e z OUTPUT: menor valor entre x, y e z

-- resposta da questao 1
menorDeDois x y | x <= y = x
                | otherwise = y

menorDeTres x y z | menorXY <= z = menorXY
                  | otherwise = z
                  where menorXY = menorDeDois x y