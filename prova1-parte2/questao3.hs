splitints l = ([x | x <- l, mod x 2 /= 0], [x | x <- l, mod x 2 == 0])