-- INPUT: Um natural n
-- OUTPUT: Verdadeiro se n é primo e falso do contrário

primo n = primo_aux n (n - 1)

primo_aux a b | b > 1 = True
              | mod a b == 0 = False
              | otherwise = primo_aux a (b - 1)