-- entrada: [1,2,3,4,5]
-- saida: (5, 5)

tupla l = tupla_aux l 1

tupla_aux (x:xs) cont | xs == [] = (x, cont)
                      | maior x xs = (x, cont)
                      | otherwise = tupla_aux xs (cont+1)

maior x [y] = x >= y
maior x (y:ys) = x >= y && maior x ys