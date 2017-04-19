-- INPUT: Lista de números, u
-- OUTPUT: Verdadeiro se u é ordenada e falso do contrário

isSorted [x] = True
isSorted (x:y:xs) | y < x = False
                  | otherwise = isSorted (y:xs)