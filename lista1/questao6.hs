-- INPUT: Lista u e valor x
-- OUTPUT: Verdadeiro se x ∈ u e falso do contrário EX(S):
-- pertence 1 [3,7,4,2] ==> False

pertence _ [] = False 
pertence x (a:u) | x == a = True
                 | otherwise = pertence x u