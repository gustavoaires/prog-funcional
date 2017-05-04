comp [] = 0
comp [x] = 1
comp (x:xs) = 1 + comp xs