-- INPUT: Lista u com possíveis chaves repetidas OUTPUT: Lista com as chaves de u sem repetições EX(S):
-- [1,2,5,2,5,7,2,5] ==> [1,2,5,7]


unique l | l == [] = []
         | otherwise = unique_aux l []

unique_aux (x:xs) y | not (exist_in x y) && xs /= [] = unique_aux xs new_list
                    | exist_in x y && xs /= [] = unique_aux xs y
                    | not (exist_in x y) && xs == [] = new_list
                    | exist_in x y && xs == [] = y
                    where new_list = x : y

exist_in a l | l == [] = False
             | a == x = True
             | otherwise = exist_in a xs
             where 
               x = head l
               xs = tail l