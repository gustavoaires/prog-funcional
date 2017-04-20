-- INPUT: Lista de números u
-- OUTPUT: Lista de listas. Cada lista-componente possui um ou dois elementos. 
-- Quando possui dois, representa uma sequência de chaves repetidas de u, sendo o primeiro valor o total de repetições e o segundo a chave que se repete. Quando possui um elemento contém uma chave de u que não se repete.
-- EX(S):
-- compac [2,2,2,3,4,4,2,9,5,2,4,5,5,5] ==> [[3,2],[3],[2,4],[2],[9],[5],[2],[4],[3,5]]

compac (x:xs) = compac_aux x xs 1

compac_aux x (y:ys) cont
    | length ys == 0 && x == y = [cont + 1, x] : []
    | length ys == 0 && x /= y && cont > 1 = [cont, x] : [y] : []
    | x == y = compac_aux y ys (cont + 1)
    | x /= y && cont > 1 = [cont, x] : compac_aux y ys 1
    | x /= y && cont == 1 = [x] : compac_aux y ys 1