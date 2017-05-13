data Expr = Lit Int | Add Expr Expr | Sub Expr Expr | Mult Expr Expr | Div Expr Expr
   deriving (Eq, Show)

avalia :: Expr -> Int
avalia (Lit a) = a
avalia (Add a b) = avalia a + avalia b
avalia (Sub a b) = avalia a - avalia b
avalia (Mult a b) = avalia a * avalia b
avalia (Div a b) = div (avalia a) (avalia b)

