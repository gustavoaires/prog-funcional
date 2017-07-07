data Car a b c = Car { company :: a  
                     , model :: b  
                     , year :: c   
                     } deriving (Show)

tellCar :: (Car String String Int) -> String
tellCar (Car {company = c, model = m, year = y}) = 
	"This " ++ c ++ " " ++ m ++ " was made in " ++ show y  