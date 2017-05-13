-- divisores entre intervalos
-- enunciado mal feito.
divisores x y = [ b | a <- x, b <- y, mod b a == 0]
