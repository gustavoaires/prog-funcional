-- faça uma função de compressão que substitua cada ocorrência repetida de um caractere por !nc, 
-- onde n é o número de vezez que o caractere c aparece.
-- contar_iguais_aux n (_:_:[]) = contar_iguais_aux n [1,2]

contar_iguais_aux n (a:[]) = show n
contar_iguais_aux n (a:b:[]) | a == b = show (n + 2)
                             | otherwise = show (n + 1)  

contar_iguais_aux n (a:b:x) | a == b = contar_iguais_aux (n + 1) (b:x)
                            | otherwise = show (n + 1)
contar_iguais x = contar_iguais_aux 0 x 

remove_primeiro [] = []
remove_primeiro (a:b:[]) | a == b = []
                         | otherwise = b : []
remove_primeiro (a:b:x) | a == b = remove_primeiro (b:x)
                        | otherwise = (b:x)

comprime [] = []
comprime (a:x) | contar_iguais (a:x) == "0" = a:[]
               | contar_iguais (a:x) == "1" = a : comprime(x)
               | otherwise = '!' : contar_iguais (a:x) ++ (a : []) ++ comprime (remove_primeiro (a:x))
