-- INPUT: Inteiro n
-- OUTPUT: Lista [1,−1,2,−2,3,−3,··· ,n,−n]

alter n = alter_aux n 1 False

alter_aux n x par | x == n && not par = x : alter_aux n x (not par)
                  | x == n && par = (x * (-1)) : []
                  | not par = x : alter_aux n x (not par)
                  | par = (x * (-1)) : alter_aux n (x + 1) (not par)