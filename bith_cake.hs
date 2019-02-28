solveCake :: [Int] -> Int
solveCake candles = blow
  where
    max = maximum candles
    blow = length $ filter (==max) candles

main = interact $ show . solveCake . map read . tail . words
