base :: Int -> (Int, String, String, Char)
base x 
   | x == 0  = (1793, "Pedro Paulo" ,             "Mestre", 'M')
   | x == 1  = (1797, "Joana Silva Alencar" ,     "Mestre", 'M')
   | x == 2  = (1534, "João De Medeiros" ,        "Doutor", 'F')  
   | x == 3  = (1267, "Cláudio César de Sá" ,     "Doutor", 'M')
   | x == 4  = (1737, "Paula de Medeiros" ,       "Mestre", 'F')
   | x == 5  = (1888, "Rita de Matos" ,           "Mestre", 'F')  
   | x == 9  = (1698, "Tereza Cristina Andrade" , "Mestre", 'F') 
   | otherwise = (   0, "" , "", '0') 


-- letra a
matricula (x, _, _, _) = x
nome      (_, x, _, _) = x
titulo    (_, _, x, _) = x
genero    (_, _, _, x) = x

contar_doutor n | n < 0 = 0
                | titulo (base n) == "Doutor" = 1 + contar_doutor (n - 1)
                | otherwise = 0 + contar_doutor (n - 1)

numero_de_doutores = contar_doutor 10

-- letra b 
contar_mulheres n | n < 0 = 0
                  | genero (base n) == 'F' = 1 + contar_mulheres (n - 1)
                  | otherwise = 0 + contar_mulheres (n - 1)

numero_de_mulheres = contar_mulheres 10

-- letra c
contar_mestres_homens n | n < 0 = 0
                        | genero (base n) == 'M' && titulo (base n) == "Mestre" = 1 + contar_mestres_homens (n - 1)
                        | otherwise = contar_mestres_homens (n - 1)

numero_mestres_homens = contar_mestres_homens 10

-- letra d 
mais_antigo_que p1 p2 | matricula p1 < matricula p2 = p1
                      | otherwise = p2

mais_antigo n | n == 0 = base n
              | matricula (base n) == 0 = mais_antigo (n - 1)
              | otherwise = mais_antigo_que (base n) (mais_antigo (n - 1))

