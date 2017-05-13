-- determinar se o conteúdo de uma lista apresenta um palíndromo

inverter [] = []
inverter (a:x) = (inverter x) ++ [a]

compara _ [] = False
compara [] _ = False
compara [a] [b] | a == b = True
                | otherwise = False
compara (x:a) (y:b) | x == y = compara a b
                    | otherwise = False

palindrome a = compara a (inverter a)

