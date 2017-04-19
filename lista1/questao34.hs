-- INPUT: Natural n
-- OUTPUT: Soma dos dígitos de n EX(S):
-- sdig 328464584658 ==> 63

sdig x | x < 10 = x
       | otherwise = (mod x 10) + sdig (div x 10)