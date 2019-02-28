solve :: [Int] -> [Int]
solve (s : t : a : b : m : _ : rest) = [apples, oranges]
  where
    insideHose arr = filter (\x -> x >= s && x <= t) arr
    apples = length $ insideHose $ map (\x -> x + a) $take m rest
    oranges = length $ insideHose $ map (\x -> x + b) $ drop m rest

main = interact $ unlines . map show . solve . map read . words
