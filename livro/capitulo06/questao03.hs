-- lista telefônica pessoal
type Nome = String
type Telefone = String
type Telefones = [(Nome, Telefone)]

-- letra a 
telefone :: Telefones -> Nome -> Telefone
telefone [] _ = "Telefone Desconhecido."
telefone (a:x) nome | nome == fst a = snd a
                    | otherwise = telefone x nome

-- letra b 
novo_telefone :: Telefones -> (Nome, Telefone) -> Telefones
novo_telefone [] b = [b]
novo_telefone (a:x) b | fst b == fst a = b : x
                      | otherwise = a : novo_telefone x b
