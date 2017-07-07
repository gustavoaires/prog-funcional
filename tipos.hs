data Point = Point Float Float deriving (Show)  
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

surface :: Shape -> Float  
surface (Circle _ r) = pi * r ^ 2  
surface (Rectangle (Point x1 y1) (Point x2 y2)) = 
	(abs $ x2 - x1) * (abs $ y2 - y1)

nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x y) r) a b = 
	Circle (Point (a + x) (b + y)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) a b = 
	Rectangle (Point (a + x1) (b + y1)) (Point (c + x2) (d + y2))