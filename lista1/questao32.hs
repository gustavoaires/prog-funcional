-- INPUT: Uma string qualquer S
-- OUTPUT: Verdadeiro se S é um palíndromo e falso do contrário
-- EX(S):
-- isPalind "ana" ==> True 
-- isPalind "123aa321" ==> True 
-- isPalind "cachorro" ==> False

isPalind [] = True
isPalind [a] = True
isPalind (x:xs) | getLast xs == x = isPalind ys
                | otherwise = False
                where ys = removeLast xs

-- a funcao getLast pode ser substituida pela funcao last do prelude
getLast [x] = x
getLast (x:xs) = getLast xs

-- a funcao removeLast pode ser substituida pela funcao init do prelude
removeLast (x:xs) | xs == [] = []
                  | otherwise = x : removeLast xs