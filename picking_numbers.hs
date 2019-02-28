powerset :: [a] -> [[a]]
powerset [] = [[]]
powerset (x:xs) = map (x:) (powerset xs) ++ powerset xs

-- 1 1 1 1 2 2 2 3 3 4
-- 2 3 4 5 3 4 5 4 5 5

anyTwoSumOne :: [Int] -> Bool
anyTwoSumOne _ = False

solve :: [Int] -> Int
solve xs = maximum
        $ map length
        $ filter anyTwoSumOne
        $ powerset xs

main :: IO ()
main = interact $ show . solve . map read . tail . words
