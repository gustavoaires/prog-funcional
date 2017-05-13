

-- Agrupar duas listas
zipar (a:b) (x:y) = (a,x) : zipar b y
zipar _ _ = []

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

--   Segunda Solução
menor_2 [a] = a 
menor_2 [a,b] | a < b = a
              | otherwise = b

menor_2 (a:b:c) | a < b = menor (a:c)
                | otherwise = menor (b:c)

remove_2 _ [] = []
remove_2 m [a] | m == a = []
               | otherwise = error "O menor valor não está na lista !"
remove_2 m (b:c) | m == b = c
                 | otherwise = b : remove_2 m c

ordena_2 [] = []
ordena_2 [a] = [a]
ordena_2 l = (menor_2 l) : ordena_2 (remove_2 (menor_2 l) l)

-- Concatenar duas listas
concatena :: [a] -> [a] -> [a]
concatena [] y = y
concatena (x:xs) y = x : concatena xs y

-- Inverter uma lista
--   Primeira Solução
inverte_1 :: [a] -> [a]
inverte_1 [] = []
inverte_1 (x:xs) = (inverte_1 xs) ++ [x]

--   Segunda Solução
rev_aux :: [a] -> [a] -> [a]
rev_aux [] ys = ys
rev_aux (x:xs) y = rev_aux xs (x:y)

inverte_2 :: [a] -> [a]
inverte_2 xs = rev_aux xs []


