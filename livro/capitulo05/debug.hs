import Debug.Trace

buggy acc xs | traceShow(acc, xs) False = undefined
buggy acc [] = acc
buggy acc (x:xs) = buggy (acc + x) xs

main = print $ buggy 0 [1..10]

rem_ultimo [_] = []
rem_ultimo (a:b) | traceShow(show a ++ " " ++ show b) False = a : rem_ultimo b
rem_ultimo (a:b) = a : rem_ultimo b
