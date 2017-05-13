raiz_aux a b | a * a <= b = a
             | otherwise = raiz_aux (a - 1) b
	     
raiz n = raiz_aux n n 
       
