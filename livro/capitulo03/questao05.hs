mod2 a b | (a - b) < b = a - b
         | (a - b) == 0 = 0
	 | otherwise = mod2 (a - b) b
