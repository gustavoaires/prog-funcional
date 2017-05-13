eh_impar n = (mod n 2) /= 0

menor [a] = a
menor (a:c) | a < (menor c) = a
            | otherwise = menor c

remove_menor [a] = []
remove_menor (a:c) | a == (menor (a:c)) = c
                   | otherwise = a : remove_menor c

ordena_lista [] = []
ordena_lista [a] = [a]
ordena_lista l = (menor l) : (ordena_lista (remove_menor l))

impares_aux [] = []
impares_aux [a] | eh_impar a = [a]
                | otherwise = []
impares_aux (a:x) | eh_impar a = a : impares_aux x
                  | otherwise = impares_aux x 

impares l = impares_aux (ordena_lista l)
