-- INPUT: Duas listas a e b
-- OUTPUT: Lista com os elementos de a e b intercalados
-- EX(S):
-- intercal [1,2,3] [7,8,9] ==> [1,7,2,8,3,9]
-- intercal [1,2,3] [8,9] ==> [1,8,2,9,3] 
-- intercal [] [1,2,6] ==> [1,2,6]

intercal l1 l2 = intercal_aux l1 l2 1

intercal_aux [] x _  = x
intercal_aux x [] _ = x
intercal_aux (x:xs) (y:ys) flag | flag == 1 = x : intercal_aux xs (y:ys) 2
                                | flag == 2 = y : intercal_aux (x:xs) ys 1