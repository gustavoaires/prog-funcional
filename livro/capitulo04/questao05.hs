diasNoMes :: Int -> Int
diasNoMes 1 = 31
diasNoMes 2 = 28
diasNoMes 3 = 31
diasNoMes 4 = 30
diasNoMes 5 = 31
diasNoMes 6 = 30
diasNoMes 7 = 31
diasNoMes 8 = 30
diasNoMes 9 = 31
diasNoMes 10 = 30
diasNoMes 11 = 31
diasNoMes 12 = 30

eh_bissexto ano | mod ano 400 == 0 = True
                | (mod ano 4 == 0) && (mod ano 100 /= 0) = True
	        | otherwise = False

conta_dias_desde_ano_0 ano  | ano == 0 = 366
                            | eh_bissexto ano == True = 366 + conta_dias_desde_ano_0 (ano - 1)
		            | otherwise = 365 + conta_dias_desde_ano_0 (ano - 1)

conta_dias_no_mes_desde_comeco_do_ano mes ano | mes == 0 = 0
                                              | mes == 2 && eh_bissexto ano == True = 29 + conta_dias_no_mes_desde_comeco_do_ano (mes - 1) ano
                                              | otherwise = diasNoMes mes + conta_dias_no_mes_desde_comeco_do_ano (mes - 1) ano

dias_totais_desde_ano0 (d, m, a) = d + (conta_dias_no_mes_desde_comeco_do_ano m a) + conta_dias_desde_ano_0 a


diasEntreDatas :: (Int, Int, Int) -> (Int, Int, Int) -> Int
diasEntreDatas (diaUm, mesUm, anoUm) (diaDois, mesDois, anoDois) = dias_totais_desde_ano0 (diaDois, mesDois, anoDois) - dias_totais_desde_ano0 (diaUm, mesUm, anoUm) 


