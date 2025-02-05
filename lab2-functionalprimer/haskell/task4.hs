ask :: String -> Int -> IO ()
ask prompt count = do
  let newPrompt = prompt ++ replicate count '!'
  putStrLn newPrompt
  line <- getLine
  if line == "quit"
    then putStrLn "quitting..." >> return ()
    else if line == ""
         then ask prompt (count + 1)
         else putStrLn ("you said: " ++ reverse line) >> ask prompt count

main :: IO ()
main = do
  let prompt = "please say something"
  ask prompt 0 
