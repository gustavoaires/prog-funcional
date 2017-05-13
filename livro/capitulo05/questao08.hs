-- função que repita as ocorrências até determinado valor
-- Entrada: repete 4
-- Saída: [4, 4, 4, 4, 3, 3, 3, 2, 2, 1]
lista_copia i n | i == 0 = []
                | otherwise = n : lista_copia (i - 1) n

repete n | n == 0 = []
         | otherwise = (lista_copia n n) : repete (n-1)

lista_copia_2 i n | i == 0 = []
                  | otherwise = [n] ++ (lista_copia_2 (i - 1) n)

repete_2 n | n == 0 = []
           | otherwise = (lista_copia_2 n n) ++ (repete_2 (n - 1))
