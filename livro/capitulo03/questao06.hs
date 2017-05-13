-- letra a
raizSeis n | n == 1 = sqrt(6)
           | otherwise = sqrt(6 + raizSeis (n - 1))

-- letra b
somaN n | n == 1 = raizSeis 1
        | otherwise = raizSeis n + somaN (n - 1)
