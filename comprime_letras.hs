comprime (x:xs) = comprime_aux xs x 1

comprime_aux (x:xs) y cont
    | length xs == 0 && x /= y && cont > 1 = "!" ++ (show cont) ++ [y]
    | length xs == 0 && x /= y && cont == 1 = [y] ++ [x]
    | length xs == 0 && x == y = "!" ++ (show (cont + 1)) ++ [y]
    | x == y = comprime_aux xs y (cont + 1)
    | x /= y && cont > 1 = "!" ++ (show cont) ++ [y] ++ (comprime_aux xs x 1)
    | x /= y && cont == 1 =  [y] ++ (comprime_aux xs x 1)