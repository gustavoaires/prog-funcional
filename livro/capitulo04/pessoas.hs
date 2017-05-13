type Peso = Float
type Idade = Int

type Pessoa = (String, Idade, Peso, String)

f_joao, f_maria :: Pessoa
f_joao = ("Joao Pedro", 19, 75.789, "Basquete")
f_maria = ("Maria Fernanda", 18, 65.432, "Volei")

selec_nome :: Pessoa -> String
selec_idade :: Pessoa -> Idade
selec_peso :: Pessoa -> Peso
selec_esporte :: Pessoa -> String

selec_nome (n, i, p, e) = n
selec_idade (n, i, p, e) = i
selec_peso (n, i, p, e) = p
selec_esporte (n, i, p, e) = e
