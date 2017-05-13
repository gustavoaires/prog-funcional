type Meu_tipo = (String, Float, Char)

pessoa :: Float -> Meu_tipo

pessoa 1 = ("Joao Silva", 12, 'm')
pessoa 2 = ("Jonas Souza", 81, 'm')
pessoa 3 = ("Joice Silva", 21, 'f')
pessoa 4 = ("Janete Souza", 55, 'f')
pessoa 5 = ("Jocileide Strauss", 21, 'f')
pessoa 9999 = ("Nao ha mais ninguem", 0, 'm')

pessoa_por_rg rg | rg == 1 = ("Joao Silva", 12, 'm')
                 | rg == 2 = ("Jonas Souza", 81, 'm')
                 | rg == 3 = ("Joice Silva", 21, 'f')
                 | rg == 4 = ("Janete Souza", 55, 'f')
                 | rg == 5 = ("Jocileide Strauss", 21, 'f')
                 | otherwise = ("Nao ha mais ninguem", 0, 'm')

-- Descobrir a pessoa com menor idade até o registro x
idade :: Meu_tipo -> Float
idade (_, y, _) = y

menor x y | x1 <= x2 = x
          | otherwise = y 
          where 
             x1 = idade x
             x2 = idade y

menor_idade :: Float -> Meu_tipo
menor_idade x | x == 1 = pessoa 1
              | otherwise = menor (pessoa x) (menor_idade (x-1))

-- Média das idades até o registro x
soma_idade :: Float -> Float
soma_idade x | x == 1 = idade (pessoa 1)
             | otherwise = idade (pessoa x) + (soma_idade (x-1))

media_idade :: Float -> Float
media_idade x = (soma_idade x) / x

-- Quantidade de entradas masculinas
sexo :: Meu_tipo -> Char
sexo (x, y, z) = z

conta :: Float -> Float -> Float 
conta x cont | x == 0 = cont
             | sexo (pessoa x) /= 'm' = conta (x - 1) cont
             | otherwise = conta (x - 1) (cont + 1)

conta_masc :: Float -> Float
conta_masc x = conta x 0 

-- Alternativa a contar entradas masculinas
eh_masc :: Meu_tipo -> Int
eh_masc x | sexo x == 'm' = 1
          | otherwise = 0

conta_masc1 :: Float -> Int
conta_masc1 x | x == 1 = eh_masc(pessoa 1)
              | otherwise = eh_masc (pessoa x) + conta_masc1 (x - 1) 

-- Retorna registro da pessoa com maior idade
maior :: Float -> Float -> Float
maior x y | (x1 >= x2) = x
          | otherwise = y
          where
             x1 = idade (pessoa x)
             x2 = idade (pessoa y)

maior_idade :: Float -> Float
maior_idade x | x == 1 = x
              | otherwise = maior x (maior_idade (x - 1))


