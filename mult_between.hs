mult_int a b c | b <= a || (b - a == 1) = 0
               | mod (b - 1) c == 0 = 1 + mult_int a (b - 1) c
               | mod (b - 1) c /= 0 = 0 + mult_int a (b - 1) c