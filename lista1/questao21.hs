-- INPUT: Duas listas a e b sem repetição de chaves 
-- OUTPUT: Lista das chaves de a e b sem repetição EX(S):
-- uniao [1,2,3] [2,4,6] ==> [1,2,3,4,6] 
-- uniao [4,5] [1] ==> [4,5,1]

uniao l1 l2 = uniao_aux l1 l2

uniao_aux (x:xs) l | xs == [] && not (pertence x l) = x : l
                   | xs /= [] && not (pertence x l) = x : uniao_aux xs l
                   | xs /= [] && pertence x l = uniao_aux xs l
                   | otherwise = l

pertence _ [] = False
pertence x (y:ys) | x == y = True
                  | otherwise = pertence x ys