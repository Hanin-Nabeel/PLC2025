sgn x = if x < 0 then "Turn Heating On" else if x == 0 then "Heating is not on" else "Turn Heating Off"

main = do
    putStrLn "Please enter a number"
    input <- getLine 
    let x = (read input :: Int)
    putStrLn( show (sgn (x)) )