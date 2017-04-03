total u | u == [] = 0
        | b == [] = 1
        | b /= [] = 1 + total b
        where
            b = tail u