-- INPUT: Uma lista u
-- OUTPUT: Corpo de u (u sem a última chave) EX(S):
-- corpo [1,2,3,4] ==> [1,2,3]

corpo (a:u) | u /= [] = a : corpo u
            | otherwise = []