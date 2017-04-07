-- INPUT: Lista u e um natural n
-- OUTPUT: Tupla de duas listas, (A,B), onde A é formada pelas 
-- n primeiras chaves de u e B pelos elementos restantes
-- EX(S):
-- divide [1,2,3,4] 2 ==> ([1,2],[3,4]) 
-- divide [1,2,3,4] 0 ==> ([],[1,2,3,4])

divide l n = divide_aux l n 0 [] []

divide_aux [] _ _ _ _ = ([],[])
divide_aux (x:xs) n cont l1 l2 | xs == [] && cont <= (n-1) = ((l1 ++ [x]), l2)
                               | xs == [] && cont > (n-1) = (l1, (l2 ++ [x]))
                               | cont <= (n-1) = divide_aux xs n (cont+1) (l1 ++ [x]) l2
                               | cont > (n-1) = divide_aux xs n (cont+1) l1 (l2 ++ [x])