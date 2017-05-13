import Data.Char 

letra :: Char -> Char
letra l | l == toUpper(l) = toLower(l)
        | l == toLower(l) = toUpper(l)

analisaLetra :: Char -> (Char, Char, Int)
analisaLetra l = (l, letra l, ord l)
