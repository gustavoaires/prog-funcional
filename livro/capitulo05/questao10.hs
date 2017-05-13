-- Ordenar uma lista 
--    Primeira Solução
menor [a] = a
menor (a:c) | a < (menor c) = a
            | otherwise = menor c

remove_menor [a] = []
remove_menor (a:c) | a == (menor (a:c)) = c
                   | otherwise = a : remove_menor c

ordena_lista [] = []
ordena_lista [a] = [a]
ordena_lista l = (menor l) : (ordena_lista (remove_menor l))


