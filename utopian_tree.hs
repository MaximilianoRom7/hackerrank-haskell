import Control.Arrow

_calculate :: Int -> [(Int -> Int)] -> Int
_calculate 0 [] = 1
_calculate 0 fs = (foldl1 (>>>) fs) 1
_calculate x fs = if mod x 2 == 0
  then _calculate (pred x) ((+1) : fs)
  else _calculate (pred x) ((*2) : fs)

calculate :: Int -> Int
calculate 0 = 1
calculate x = if mod x 2 == 0
  then 1 + calculate (pred x)
  else 2 * calculate (pred x)

solve :: [Int] -> [Int]
-- solve xs = map (\x -> calculate x []) xs
solve xs = map calculate xs

main :: IO ()
main = interact $ unlines . map show . solve . map read . tail . words
