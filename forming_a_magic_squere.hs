import Data.List

type Square = [[Int]]

magic :: Square
magic = [[8, 3, 4],
         [1, 5, 9],
         [6, 7, 2]]

rot90 :: Square -> Square
rot90 = map reverse . transpose

refl :: Square -> Square
refl = transpose

allMagic :: [Square]
allMagic = concat [ take 4 $ iterate rot90 magic
                  , take 4 $ iterate refl magic]

squareToString :: Square -> String
squareToString sq = unlines $ map (unwords . map show) sq

pp :: Square -> IO ()
pp sq = putStrLn $ squareToString sq

ppp :: [Square] -> IO ()
ppp sqs = putStrLn $ intercalate "\n" $ map squareToString sqs

squareDistance :: Square -> Square -> Int
squareDistance s1 s2 = sum $ zipWith (-) (concat s1) (concat s2)

solve :: Square -> Int
solve sq = minimum $ map (squareDistance sq) allMagic

main :: IO ()
main = interact $ show . solve . map (map read . words) . lines
