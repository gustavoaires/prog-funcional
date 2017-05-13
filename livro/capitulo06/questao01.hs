-- Defina a função numero_2 que, dados dois caracteres, retorna um inteiro em que o algarismo das dezenas é o primeiro caractere e o das unidades, o segundo, ou retorna zero se algum dos caracteres não for digito
-- numero2 '2' '3'
-- 23
-- numero2 '4' '1'
-- 41
-- numero2 'a' '3'
-- 0

import Data.Char
numero2 :: Char -> Char -> Int
numero2 a b | ord a < 48 || ord a > 57 = 0
            | ord b < 48 || ord b > 57 = 0
            | otherwise = (ord a - ord '0') * 10 + (ord b - ord '0')
