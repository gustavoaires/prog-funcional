-- INPUT: Duas listas a e b
-- OUTPUT: Concatenação entre a e b EX(S):
-- concat [] [] ==> []
-- concat [1,2] [3,4] ==> [1,2,3,4]

concat_ l [] = l
concat_ [] l = l
concat_ u (x:xs) | xs == [] = u ++ [x]
                 | xs /= [] = concat_ (u ++ [x]) xs