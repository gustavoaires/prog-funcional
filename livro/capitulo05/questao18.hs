-- função descomprime 

imprime_aux n a | n == 0 = ""
                | otherwise = a : imprime_aux (n - 1) a

descomprime (a:b:c:[]) | a /= '!' = a:b:c:[]
                       | otherwise = imprime_aux (read b :: Int) c
descomprime (a:b:c:x) | a /= '!' = descomprime(b:c:x)
                      | otherwise = (imprime_aux (read b :: Int) c) : descomprime (x)

