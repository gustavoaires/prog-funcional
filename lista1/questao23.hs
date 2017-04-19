-- INPUT: Dois números naturais n e m 
-- OUTPUT: Lista [m,m+1,m+2,··· ,m+n-1] EX(S):
-- sequencia 0 2 ==> []
-- sequencia 3 4 ==> [4,5,6]

sequencia 0 _ = []
sequencia 1 m = [m]
sequencia n m = sequencia_aux m (m+n-1-m) 0

sequencia_aux m v x | x == v = [(m + v)]
                    | x < v = [(m + x)] ++ sequencia_aux m v (x+1)