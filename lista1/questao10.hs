-- INPUT: Lista u e valor x
-- OUTPUT: Verdadeiro se x ocorre exatamente uma vez em u e falso do contrário
-- EX(S):
-- unico 2 [1,2,3,2] ==> False
-- unico 2 [3,1] ==> False
-- unico 2 [2] ==> True

unico x u = unico_aux x u 0

unico_aux x (a:u) cont | x == a && u == [] && cont == 0 = True
                       | x /= a && u == [] && cont == 1 = True
                       | x == a && u /= [] = unico_aux x u (cont+1)
                       | x /= a && u /= [] = unico_aux x u cont
                       | otherwise = False