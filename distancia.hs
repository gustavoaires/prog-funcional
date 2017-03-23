dAB xA yA xB yB | yA == yB = abs(xA - xB)
                | xA == xB = abs(yA - yB)
                | otherwise = sqrt((xA - xB)^2 + (yA - yB)^2)