
solve :: [Int] -> [Int]
solve xs = result
  where
    [n, r, _] = take 3 xs
    arr = take n $ drop 3 xs
    queries = drop (3 + n) xs
    index = \q -> mod (q + (mod (n - r) n)) n
    result = map (\q -> arr !! (index q)) queries

main = interact $ unlines . map show . solve . map read . words
