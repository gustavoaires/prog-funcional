-- INPUT: Duas listas a e b sem repetição de chaves 
-- OUTPUT: Lista das chaves que a e b possuem em comum
-- EX(S):
-- intersec [3,6,5,7] [9,7,5,1,3] ==> [3,5,7]

intersec x [] = []
intersec [] x = []
intersec (x:xs) l | pertence x l = x : intersec xs l
                  | otherwise = intersec xs l

pertence _ [] = False
pertence x (y:ys) | x == y = True
                  | otherwise = pertence x ys