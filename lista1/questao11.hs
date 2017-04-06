-- INPUT: Número x e uma lista u de números OUTPUT: Sublista de u cujos números sejam maiores que x
-- EX(S):
-- maioresQue 10 [4 6 30 3 15 3 10 7] ==> [30, 15]

maioresQue x (a:u) | a > x && u /= [] = a : maioresQue x u
                   | a > x && u == [] = a : []
                   | u /= [] = maioresQue x u
                   | otherwise = []