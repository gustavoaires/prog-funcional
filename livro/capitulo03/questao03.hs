soma a b = a + b
mult a b | a < 0 && b < 0 = (-b) + mult (a + 1) b
         | a < 0 && b > 0 = (-b) + mult (a + 1) b
         | a > 0 && b < 0 = b + mult (a - 1) b
	 | a > 0 && b > 0 = b + mult (a - 1) b
	 | a == 0 = 0
