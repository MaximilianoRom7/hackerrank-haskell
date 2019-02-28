import Control.Arrow

shared :: Int -> Int
shared 1 = 5
shared x = 3 * (div (shared (pred x)) 2)

liked :: Int -> Int
liked x = div (shared x) 2

solve :: Int -> Int
solve x = foldl1 (+)
          $ map liked [1..x]

main :: IO ()
main = interact $ read >>> solve >>> show
