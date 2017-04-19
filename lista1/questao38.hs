-- INPUT: Número inteiro positivo, n
-- OUTPUT: Verdadeiro se n for um quadrado perfeito e falso do contrário 
-- (Um quadrado perfeito é um número inteiro cuja raiz quadrada é também um número inteiro). 
-- Não utilizar operadores ou fun- ções que retornem números reais.

perfeito n = perfeito_aux n 1

perfeito_aux n x | x >= div n 2 = False
                 | x * x == n = True
                 | otherwise = perfeito_aux n (x + 1)