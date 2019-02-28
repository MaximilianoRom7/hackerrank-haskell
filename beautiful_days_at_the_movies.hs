solve :: [Int] -> Int
solve (startingDay : endingDay : divisor : rest) = out
  where
    out = length
      $ filter (\x -> mod x divisor == 0)
      $ map (\x -> x - read (reverse $ show x) :: Int)
      $ [startingDay..endingDay]

main = interact $ show . solve . map read . words
