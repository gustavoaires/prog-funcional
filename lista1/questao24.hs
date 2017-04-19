-- INPUT: Número x e lista, u, de números ordenados ascendentemente
-- OUTPUT: Lista de números ordenados ascendentemente, 
-- oriunda da inserção apropriada de x em u inserir 3 [2,7,12] ==> [2,3,7,12]

inserir a [] = [a]

inserir a [x] | a <= x = a : [x]
              | a >= x = x : [a]

inserir a (x:y:xs) | a <= x = a : x : y : xs
                   | a >= x && a <= y = x : a : y : xs
                   | otherwise = x : inserir a (y:xs)