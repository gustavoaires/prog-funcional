-- INPUT: String S
-- OUTPUT: Versão de S contendo todos os caracteres em caixa
-- baixa exceto aqueles que, por serem iniciais de palavras, devem aparecer em caixa alta EX(S):
-- titulo "FuLaNo bElTrAnO silva" ==> "Fulano Beltrano Silva"
import Data.Char

titulo [] = []
titulo l = titulo_aux l True

titulo_aux [a] True = [toUpper a]
titulo_aux [a] _ = [a]
titulo_aux (x:xs) inicial
    | x == ' ' = x : titulo_aux xs True
    | inicial = toUpper x : titulo_aux xs False
    | not inicial = toLower x : titulo_aux xs False
