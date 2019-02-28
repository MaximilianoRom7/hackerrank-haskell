

solve :: [Int] -> [Int]
solve [] = []
solve xs = r : solve (drop 3 xs)
  where
    [prisioners, sweets, chairs] = take 3 xs
    mod1 x y = mod (pred x) y + 1
    r = mod1 (mod1 sweets prisioners + (pred chairs)) prisioners

main :: IO ()
main = interact $ unlines . map show . solve . map read . tail . words
