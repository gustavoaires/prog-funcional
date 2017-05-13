aux_mmc a b | mod a b == 0 = b
            | otherwise = aux_mmc b (mod a b)

mmc a b = div (a * b) (aux_mmc a b)
        
mmc3 a b c = mmc ( mmc a b ) c
