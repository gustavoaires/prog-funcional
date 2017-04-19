-- INPUT: String S
-- OUTPUT: Versão de S contendo todos os caracteres em caixa
-- baixa exceto aqueles que, por serem iniciais de palavras, devem aparecer em caixa alta EX(S):
-- titulo "FuLaNo bElTrAnO silva" ==> "Fulano Beltrano Silva"
import Data.Char

titulo l = titulo_aux l 1

titulo_aux [a] 1 = [toUpper a]
titulo_aux [a] _ = [a]
titulo_aux (x:y:xs) n | n == 1 && x /= [] = toUpper x : (titulo_aux (y : xs) (n+1))
                      | x == ' ' = x : (titulo_aux ((toUpper y) : xs) (n+1))
                      | otherwise = x : y : titulo_aux xs (n+1)