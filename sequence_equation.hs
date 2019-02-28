import Control.Arrow

solve :: [Int] -> [Int]
solve xs = result
  where
    result = []

main = interact $ words >>> map read >>> solve >>> map show >>> unlines
