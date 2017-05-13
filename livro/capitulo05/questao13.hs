-- busca por substring
is_sub (a:x) [] = False
is_sub [] (b:y) = True
is_sub (a:x) (b:y) | a == b = is_sub x y
                   | otherwise = False

busca_sub x [] = []
busca_sub x (b:y) | is_sub x b = b : busca_sub x y
                  | otherwise = busca_sub x y
