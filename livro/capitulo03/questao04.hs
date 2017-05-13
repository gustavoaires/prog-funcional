-- letra a
fatorial n | n == 0 = 1
           | otherwise = n * fatorial (n - 1)

taylor n x | n == 0 = 1
           | otherwise = ((x ** n) / fatorial n) + (taylor (n - 1) x)

taylor10 x = taylor 10 x

-- letra b
erro n x = abs( (exp x) - (taylor n x) )

quantidade n x p | erro n x < p = n
                 | otherwise = quantidade (n + 1) x p
