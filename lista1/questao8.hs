-- INPUT: Lista u
-- OUTPUT: A chave de valor máximo em u. Não usar função max.

maior (a:u) | u == [] = a
            | a >= maior u = a
            | otherwise = maior u