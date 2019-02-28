loopPairs :: [Int] -> [[Int]]
loopPairs [] = []
loopPairs xs = [[a, b] | a <- [head xs], b <- tail xs] ++ (loopPairs $ tail xs)

readIntList :: IO [Int]
readIntList = do
  line <- getLine
  return $ map read $ words line

solve :: [Int] -> Int -> Int
solve [] _ = 0
solve xs k = foldl1 (+) $ do
  pair <- loopPairs xs
  if mod (foldl1 (+) pair) k == 0
    then return 1
    else return 0

main :: IO ()
main = do
  [_, k] <- readIntList
  xs <- readIntList
  putStrLn $ show $ solve xs k
