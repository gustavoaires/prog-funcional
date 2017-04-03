pertence :: Int -> [Int] -> Bool
pertence x (a:u) | length u == 0 = False
                 | x == a = True
                 | otherwise = pertence x u