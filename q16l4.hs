horner :: [Double] -> Double -> Double
horner [] z = 0
horner (c:cs) z = c + z * horner cs z

horner cs z = foldr (\acc c -> acc + c * z) 0 cs