type Cadeiras = [(Nome, Nota)]
type Nome = String
type Nota = Int

-- letra a 
nota :: Cadeiras -> Nome -> Nota
nota [] _ = 0
nota (a:x) nome | fst a == nome = snd a
                | otherwise = nota x nome

-- letra b
nova_cadeira :: Cadeiras -> (Nome, Nota) -> Cadeiras
nova_cadeira [] resultado = resultado : []
nova_cadeira (a:x) resultado | fst a == fst resultado = resultado : x
                             | otherwise = a : nova_cadeira x resultado

