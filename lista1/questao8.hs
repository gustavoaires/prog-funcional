-- INPUT: Lista u
-- OUTPUT: A chave de valor máximo em u. Não usar função max.

maior [a] = a
maior (a:u) | a >= maior u = a
            | otherwise = maior u