data_lista = [("joao", 21), ("alex", 32), ("aloisio", 12), ("paulo", 71), ("fernando", 27)]
data_lista_pessoa (x, _) = x
data_lista_idade  (_, y) = y
-- Nome da pessoa mais velha
pessoa_maior_idade [a] = a
pessoa_maior_idade (a:x) | data_lista_idade a > data_lista_idade (pessoa_maior_idade x) = a 
                         | otherwise = pessoa_maior_idade x

-- Nome da pesso mais nova
pessoa_menor_idade [a] = a
pessoa_menor_idade (a:x) | data_lista_idade a < data_lista_idade (pessoa_menor_idade x) = a 
                         | otherwise = pessoa_menor_idade x
