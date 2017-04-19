-- INPUT: Uma string S
-- OUTPUT: Versão em caixa alta da string S EX(S):
-- upper "abc" => "ABC"
-- upper "tenho 45" => "TENHO 45"
import Data.Char

upper [x] = [toUpper x]
upper (x:xs) = toUpper x : upper xs