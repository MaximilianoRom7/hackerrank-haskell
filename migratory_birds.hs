qs :: (Ord a) => [a] -> [a]
qs [] = []
qs (x:xs)= qs (filter (< x) xs) ++ [x] ++ qs (filter (>= x) xs)


splitBy :: (Int -> Bool) -> [Int] -> [[Int]] -> [[Int]]
splitBy f xs [] = splitBy f xs [[], []]
splitBy f [] res = res
splitBy f (x:xs) res = result
  where
    added = if f x
      then [x : res !! 0,     res !! 1]
      else [    res !! 0, x : res !! 1]
    result = splitBy f xs added


countEach :: [Int] -> [(Int, Int)] -> [(Int, Int)]
countEach [] counted = counted
countEach (x:xs) counted = result
  where
    [left, right] = splitBy (== x) xs []
    result = countEach right $ (x, length left) : counted

filterMaximumCount :: [(Int, Int)] -> [(Int, Int)]
filterMaximumCount count = filter ((== (maximum $ map snd count)) . snd) count


solve :: [Int] -> Int
solve birds = minimum
              $ map fst
              $ filterMaximumCount
              $ countEach birds []


main = interact $ show . solve . map read . tail . words
