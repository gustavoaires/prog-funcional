intercal l1 l2 = intercal_aux l1 l2 True

intercal_aux [] x _  = x
intercal_aux x [] _ = x
intercal_aux (x:xs) (y:ys) getDaListaUm 
    | getDaListaUm = x : intercal_aux xs (y:ys) False
    | otherwise = y : intercal_aux (x:xs) ys True