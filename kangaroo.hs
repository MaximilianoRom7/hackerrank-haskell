solve :: [Int] -> String
solve (x1 : v1 : x2 : v2 : rest)
  | v2 < v1 && mod (x1 - x2) (v2 - v1) == 0 = "YES"
  | otherwise = "NO"

main = interact $ solve . map read . words
