-- recebe duas listas de inteiros, sem repetição, e retorna a intersecção dessas duas listas
pertence a [] = False

pertence a (b:y) | a == b = True 
                 | otherwise = pertence a y

interseccao [] y = []
interseccao (a:x) y | pertence a y = a : interseccao x y
                    | otherwise = interseccao x y
