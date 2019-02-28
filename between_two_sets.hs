solve :: [Int] -> [Int] -> Int
solve la lb = length
              $ filter (\x -> mod lbGcd x == 0)
              $ takeWhile (\x -> x <= lbGcd)
              $ map (*laLcm) [1..]
  where
    laLcm = foldl1 lcm la
    lbGcd = foldl1 gcd lb

readIntList :: IO [Int]
readIntList = do
  line <- getLine
  return $ map read $ words line

main :: IO ()
main = do
  [_, _] <- readIntList
  la     <- readIntList
  lb     <- readIntList
  putStrLn $ show $ solve la lb
