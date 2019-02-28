import Data.List

scoreAlice (a, b)
    | a > b = 1
    | otherwise = 0

scoreBob (a, b)
    | a < b = 1
    | otherwise = 0

solve :: (Ord a, Num a) => [a] -> [a]
solve xs = [pointsAlice, pointsBob]
    where
        dimAlice = take 3 xs
        dimBob = drop 3 xs
        bothZip = zip dimAlice dimBob
        pointsAlice = sum $ map scoreAlice bothZip
        pointsBob = sum $ map scoreBob bothZip

main = interact $ intercalate " " . map show . solve . map read . words
