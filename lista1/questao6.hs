-- INPUT: Lista u e valor x
-- OUTPUT: Verdadeiro se x ∈ u e falso do contrário EX(S):
-- pertence 1 [3,7,4,2] ==> False

pertence x (a:u) | length u == 0 = False
                 | x == a = True
                 | otherwise = pertence x u