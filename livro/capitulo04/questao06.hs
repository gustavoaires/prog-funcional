termo :: (Float, Float, Float) -> Float
termo (a, b, c) =  b * b - 4 * a * c

raizes :: (Float, Float, Float) -> (String, Float, Float)
raizes (a, b, c) | termo (a, b, c) < 0 = ("Falha", 0, 0)
                 | otherwise = ("Sucesso", ((-b) + sqrt(termo (a, b, c))) / 2, ((-b) - sqrt(termo (a, b, c))) / 2 )

resultado (x, _, _) = x
valores (_, x, y) = (x, y)

equacao (a, b, c) = raizes (a, b, c) --  | resultado (raizes (a, b, c)) == "Sucesso" = valores (raizes (a, b, c))
--                  | otherwise = resultado (raizes(a, b, c))
