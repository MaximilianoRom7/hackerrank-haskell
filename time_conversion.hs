import Data.List

solveTimeConversion :: String -> String
solveTimeConversion t
  | drop 8 t == "AM" && take 3 t == "12:" = "00:" ++ (take 5 $ drop 3 t)
  | isInfixOf "AM" t = take 8 t
  | drop 8 t == "PM" && take 3 t == "12:" = "12:" ++ (take 5 $ drop 3 t)
  | isInfixOf "PM" t = (show (12 + (read $ take 2 t))) ++ (take 6 (drop 2 t))

main = interact $ solveTimeConversion . (!! 0) . words
