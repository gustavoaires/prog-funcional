maiorDivisor_aux a b | mod a b == 0 = b
                     | otherwise = maiorDivisor_aux a (b - 1)

maiorDivisor n = maiorDivisor_aux n (n - 1)

mdc a b | a < b && mod b a == 0 = a
        | a < b && mod b a /= 0 = mdc (maiorDivisor a) b
	| b < a && mod a b == 0 = b
	| b < a && mod a b /= 0 = mdc a (maiorDivisor b)
	| otherwise = 0
