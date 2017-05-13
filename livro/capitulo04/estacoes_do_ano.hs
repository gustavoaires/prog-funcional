type Seq_Caract = String
type Nomes = (Seq_Caract, Seq_Caract, Seq_Caract, Seq_Caract)

f_nomes_est :: Nomes
f_nomes_est = ("Inverno", "Outono", "Primavera", "Verao")

selec_inv (x, _, _, _) = x
selec_outono (_, x, _, _) = x
selec_prima (_, _, x, _) = x
selec_verao (_, _, _, x) = x
