import System.Environment
import System.Random

guess ramdomNum attempts = do
  if attempts > 0 then do
      putStrLn ("Você tem " ++ (show attempts) ++ " chances para adivinhar o número.")
      putStrLn "Informe um número: "
      wildguess <- getLine

      if (read wildguess) == ramdomNum then do putStrLn "Parabéns!"
      else do 
        putStrLn "Errou!"
        guess ramdomNum (attempts - 1)
  else do putStrLn "Não há mais chances!!!"

main = do 
    args <- getArgs
    ramdomNum <- randomRIO (1::Int, (read $ args !! 0)::Int)
    guess ramdomNum ((read $ args !! 1)::Int)