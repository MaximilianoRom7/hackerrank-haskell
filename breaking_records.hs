import Data.List

record :: ([Int] -> Int) -> [Int] -> Int
record f xs = (length $ group $ map f $ tail $ inits xs) - 1

solve :: [Int] -> [Int]
solve xs = [record maximum xs, record minimum xs]

main :: IO()
main = interact $ unwords . map show . solve . map read . tail . words
