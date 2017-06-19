type Rel = [(Int, Int)]

reflexiva :: [Int] -> Rel -> Bool
reflexiva set rel = and [elem (x,x) rel | x <- set]

simetrica :: Rel -> Bool
simetrica rel = and [elem (x,y) rel | (y,x) <- rel]

transitiva :: Rel -> Bool
transitiva rel = and [elem (x,z) rel | (x,y) <- rel, (w,z) <- rel, y == w]