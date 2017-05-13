pessoa rg  | rg == 1 = ("João Silva", 12, 'm')
           | rg == 2 = ("Jonas Souza", 51, 'm')
           | rg == 3 = ("João Marcelo", 34, 'm')
           | rg == 4 = ("Barry Lyndon", 3, 'm')
           | rg == 321 = ("Jocileide Strauss", 21, 'f')
           | otherwise = ("Não há ninguém mais", 9999, 'x')

 -- letra a - nome da pessoa de menor idade até determinado registro
idade :: (String, Float, Char) -> Float
idade (_, x, _) = x

nome :: (String, Float, Char) -> String 
nome (x, _, _) = x

menor_idade n | n == 1 = idade (pessoa 1)
              | idade (pessoa n) <= menor_idade (n-1) = idade (pessoa n)
              | otherwise = menor_idade (n - 1)

pessoa_menor_idade n | idade (pessoa n) == menor_idade n = nome (pessoa n)
                     | otherwise = pessoa_menor_idade (n - 1)

-- letra b - a idade média de todas as pessoas até um dado registro
soma_idade :: Float -> Float
soma_idade n | n == 1 = idade (pessoa n)
             | otherwise = idade (pessoa n) + soma_idade (n - 1)

media_idade n = (soma_idade n) / n

-- letra c - o número de pessoas do sexo masculino
sexo :: (String, Float, Char) -> Char
sexo (_, _, x) = x

e_homem p | sexo p == 'm' = 1
          | otherwise = 0

numero_homens n | n == 1 = e_homem (pessoa n)
                | otherwise = e_homem (pessoa n) + numero_homens (n - 1)
 
-- letra d - o número do registro da pessoa de maior idade
maior_idade n | n == 1 = idade (pessoa n)
              | idade (pessoa n) > idade (pessoa (n - 1)) = idade (pessoa n)
              | otherwise = maior_idade (n - 1)

pessoa_idade_igual n id | n == 0 = ("Inexistente", 0.0, 'x')
                        | idade (pessoa n) == id = pessoa n
                        | idade (pessoa n) /= id = pessoa_idade_igual (n - 1) id

pessoa_maior_idade n = pessoa_idade_igual n (maior_idade n)

registro_pessoa_maior_idade n | n == 1 = n
                              | (pessoa n) == (pessoa_maior_idade n) = n
                              | otherwise = registro_pessoa_maior_idade (n - 1)



