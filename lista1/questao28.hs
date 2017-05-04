-- INPUT: Um natural n e uma lista ou string S OUTPUT: Lista S rotacionada n vezes à direita 
-- EX(S):
-- rotDir 0 "asdfg" ==> "asdfg"
-- rotDir 1 "asdfg" ==> "gasdf"
-- rotDir 2 "asdfg" ==> "fgasd"
-- rotDir 3 "asdfg" ==> "dfgas"

rotDir 0 l = l
rotDir n l = rotDir (n-1) (last l : init l)