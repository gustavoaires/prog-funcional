-- INPUT: Lista u
-- OUTPUT: Lista das chaves de u na ordem inversa. EX(S):
-- reverso [1,2,3,4] ==> [4,3,2,1]

reverso (x:xs) | xs == [] = [x]
               | otherwise = (reverso xs) ++ [x]