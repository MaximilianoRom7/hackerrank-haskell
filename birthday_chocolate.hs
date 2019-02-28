partsN :: Int -> [Int] -> [[Int]]
partsN _ [] = []
partsN n xs = take n xs : rest
  where
    t = tail xs
    rest = if length t >= n then (partsN n $ t) else []

solve :: [Int] -> Int -> Int -> Int
solve bar d m = length
                $ filter (\x -> x == d)
                $ map (foldl1 (+))
                $ partsN m bar

readIntList :: IO [Int]
readIntList = do
  line <- getLine
  return $ map read $ words line

main :: IO ()
main = do
  _      <- getLine
  bar    <- readIntList
  [d, m] <- readIntList
  putStrLn $ show $ solve bar d m
