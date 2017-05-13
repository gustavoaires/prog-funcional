type Livros = [(Nome, Quantia)]
type Nome = String
type Quantia = (Euros, Centimos)
type Euros = Int
type Centimos = Int

-- letra a 
preco :: Livros -> Nome -> Quantia
preco [] nome = error "Preço Desconhecido"
preco (a:x) nome | nome == fst a = snd a
                 | otherwise = preco x nome

-- letra b
novo_preco :: Livros -> (Nome, Quantia) -> Livros
novo_preco [] livro = livro : []
novo_preco (a:x) livro | fst livro == fst a = livro : x
                       | otherwise = a : novo_preco x livro
