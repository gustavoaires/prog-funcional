-- Defina a função atras_13 que, dada uma letra minúscula, devolve a letra minúscula que na ordem alfabética está 13 lugares atrás.
-- atras_13 'e'
-- 'r'
-- atras_13 'g'
-- 't'
import Data.Char
atras_13 :: Char -> Char
atras_13 a | ord a < ord 'a' || ord a > ord 'z' = error "Não é letra minúscula!!!"
           | ord a > ord 'a' + 13 = chr (ord a - 13)
	   | otherwise = chr (ord 'z' - (12 - (ord a - ord 'a')))

