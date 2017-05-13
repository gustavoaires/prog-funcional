-- dadas duas listas ordenadas como entrada, faça uma função merge

merge (a:x) [] = a:x 
merge [] (b:y) = b:y 
merge (a:x) (b:y) | a < b = a : (merge x (b:y))
                  | otherwise = b :(merge (a:x) y)
