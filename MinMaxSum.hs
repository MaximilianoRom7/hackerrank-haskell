deleteN i l = take i l ++ drop (i + 1) l

sumCombinations [] = []
sumCombinations l = map sum $ map (\i -> deleteN i l) [0..((length l) - 1)]

solveMinMaxSum :: [Int] -> [Int]
solveMinMaxSum l = [min, max]
  where
    sums = sumCombinations l
    min = minimum $ sums
    max = maximum $ sums

main = interact $ unwords . map show . solveMinMaxSum . map read . words
