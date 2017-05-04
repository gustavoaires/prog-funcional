-- INPUT: Uma string qualquer S
-- OUTPUT: Verdadeiro se S é um palíndromo e falso do contrário
-- EX(S):
-- isPalind "ana" ==> True 
-- isPalind "123aa321" ==> True 
-- isPalind "cachorro" ==> False

isPalind [] = True
isPalind [a] = True
isPalind (x:xs) | (last xs) == x = isPalind (init xs)
                | otherwise = False
                -- where ys = removeLast xs

-- a funcao getLast pode ser substituida pela funcao last do prelude
getLast [x] = x
getLast (x:xs) = getLast xs

-- a funcao removeLast pode ser substituida pela funcao init do prelude
removeLast [x] = []
removeLast (x:xs) = x : removeLast xs