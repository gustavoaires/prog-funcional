frequencia x (a:u) | x == a && u == [] = 1
                   | x /= a && u == [] = 0
                   | x == a && u /= [] = 1 + frequencia x u
                   | x /= a && u /= [] = 0 + frequencia x u
