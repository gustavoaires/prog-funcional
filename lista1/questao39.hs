-- INPUT: Dois inteiros positivos, n e b (1 < b < 37) 
-- OUTPUT: Representação na base b do inteiro n EX(S):
-- base 17 2 ==> "10001"
-- base 26 16 ==> "1A"

base x n 
    | x < n = letra x
    | div x n == 0 = show (mod x n)
    | otherwise = base (div x n) n ++ [mod x n]

letra 0 = '0'
letra 1 = '1'
letra 2 = '2'
letra 3 = '3'
letra 4 = '4'
letra 5 = '5'
letra 6 = '6'
letra 7 = '7'
letra 8 = '8'
letra 9 = '9'
letra 10 = 'a'
letra 11 = 'b'
letra 12 = 'c'
letra 13 = 'd'
letra 14 = 'e'
letra 15 = 'f'
letra 16 = 'g'
letra 17 = 'h'
letra 18 = 'i'
letra 19 = 'j'
letra 20 = 'k'
letra 21 = 'l'
letra 22 = 'm'
letra 23 = 'n'
letra 24 = 'o'
letra 25 = 'p'
letra 26 = 'q'
letra 27 = 'r'
letra 28 = 's'
letra 29 = 't'
letra 30 = 'u'
letra 31 = 'v'
letra 32 = 'w'
letra 33 = 'x'
letra 34 = 'y'
letra 35 = 'z'