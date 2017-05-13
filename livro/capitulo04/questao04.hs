menor3 a b c | a < b && a < c = a
             | b < a && b < c = b
	     | otherwise = c

menor4 a b c d | a < b && a < c && a < d = a
               | b < a && b < c && b < d = b
               | c < a && c < b && c < d = c
               | otherwise = d

maior3 a b c | a > b && a > c = a
             | b > c && b > a = b
	     | otherwise = c

maior4 a b c d | a > b && a > c && a > d = a
               | b > a && b > c && b > d = b
               | c > a && c > b && c > d = c
               | otherwise = d

segundo_menor4 a b c d | a == (menor4 a b c d) = menor3 b c d
                       | b == (menor4 a b c d) = menor3 a c d
                       | c == (menor4 a b c d) = menor3 a b d
                       | d == (menor4 a b c d) = menor3 a b c

segundo_maior4 a b c d | a == (maior4 a b c d) = maior3 b c d
                       | b == (maior4 a b c d) = maior3 a c d
                       | c == (maior4 a b c d) = maior3 a b d
                       | d == (maior4 a b c d) = maior3 a b c

ordena4 a b c d = (menor4 a b c d, segundo_menor4 a b c d, segundo_maior4 a b c d, maior4 a b c d)  
