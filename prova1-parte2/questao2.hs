rotDir _ [] = []
rotDir 0 l = l
rotDir n l = rotDir (n-1) (last l : init l)