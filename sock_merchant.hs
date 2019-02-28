pop :: Int -> [a] -> [a]
pop 0 xs = tail xs
pop i xs = take i xs ++ drop (succ i) xs

takeFrom :: (Eq a) => [a] -> a -> [a]
takeFrom [] _ = []
takeFrom (x:xs) n = if x == n
                    then xs
                    else x : takeFrom xs n

countPairs :: Int -> [Int] -> Int
countPairs pairs [] = pairs
countPairs pairs (sock : rest) = total
  where
    total = if elem sock rest
      then countPairs (succ pairs) (takeFrom rest sock)
      else countPairs pairs rest

solve :: [Int] -> Int
solve (_:socks) = pairsCount
  where
    pairsCount = countPairs 0 socks


main = interact $ show . solve . map read . words
