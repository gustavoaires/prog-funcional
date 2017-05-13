-- função que rotaciona a lista para esquerda de acordo com o primeiro parâmetro
rodar_esquerda_simples (a:x) = x ++ [a]

rodar_esquerda n x | n == 1 = rodar_esquerda_simples x
                   | otherwise = rodar_esquerda_simples (rodar_esquerda (n - 1) x)

