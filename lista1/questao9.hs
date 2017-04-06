-- INPUT: Lista u e valor x
-- OUTPUT: Retorna o total de ocorrências de x em u.
-- EX(S):
-- frequencia 5 [4,5,2,1,5,5,9] ==> 3

frequencia x (a:u) | x == a && u == [] = 1
                   | x /= a && u == [] = 0
                   | x == a && u /= [] = 1 + frequencia x u
                   | x /= a && u /= [] = 0 + frequencia x u
