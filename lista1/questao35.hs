-- INPUT: Lista ordenável u
-- OUTPUT: Versão ordenada de u pelo método de ordenação em bolhas

bubblesort xs = _bubblesort_iter xs 0

-- empurra o ultimo para o fim i vezes
_bubblesort_iter xs i
    | i == (length xs) = xs
    | otherwise = _bubblesort_iter (_bubblesort xs) (i + 1)

-- empurra o ultimo para o fim
_bubblesort [x] = [x]
_bubblesort (x:y:xs) 
    | x > y = y : _bubblesort (x:xs)
    | otherwise = x : _bubblesort (y:xs)