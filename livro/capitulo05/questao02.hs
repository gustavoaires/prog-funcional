dic_10 = zip [0..9] ["zero", "um", "dois", "tres", "quatro", "cinco", "seis", "sete", "oito", "nove"]

dic_10_numero  (x, _) = x
dic_10_palavra (_, y) = y

dic_10_value _ [] = ""
dic_10_value n (a:x) | n == (dic_10_numero a) = dic_10_palavra a
                     | otherwise = dic_10_value n x

conv_int_str :: [Int] -> [String]
conv_int_str [] = []
conv_int_str (a:x) = (dic_10_value a dic_10) : conv_int_str x
