maioresQue x (a:u) | a > x && u /= [] = a : maioresQue x u
                   | a > x && u == [] = a : []
                   | u /= [] = maioresQue x u
                   | otherwise = []