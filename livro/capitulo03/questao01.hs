soma_incluindo_limites n1 n2 | n1 == n2  = n1 
                             | n1 > n2   = 0
                             | otherwise = n1 + n2 + (soma_incluindo_limites (n1 + 1) (n2 - 1))

soma_excluindo_limites n1 n2 = soma_incluindo_limites (n1 + 1) (n2 - 1)
