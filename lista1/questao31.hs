-- INPUT: Uma lista qualquer u e uma lista de posições P
-- OUTPUT: Lista das chaves de u cujas posições estão em P
-- EX(S):
-- selec "abcdef"[0,3,2,3] ==> "adcd"

selec l [x] = [get_by_index l x 0]
selec l (x:xs) = get_by_index l x 0 : selec l xs

get_by_index (x:xs) n i | n == i = x
                        | otherwise = get_by_index xs n (i+1) 