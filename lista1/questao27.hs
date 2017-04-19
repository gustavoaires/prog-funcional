-- INPUT: Um natural n e uma lista ou string S OUTPUT: Lista S rotacionada n vezes à esquerda 
-- EX(S):
-- rotEsq 0 "asdfg" ==> "asdfg"
-- rotEsq 1 "asdfg" ==> "sdfga"
-- rotEsq 3 "asdfg" ==> "fgasd"
-- rotEsq 4 "asdfg" ==> "gasdf"

rotEsq n (x:xs) | n == 0 = x : xs
                | otherwise = rotEsq (n-1) (xs++[x])