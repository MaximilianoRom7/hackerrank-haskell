import Data.List

roundGrade :: Int -> Int
roundGrade p
  | p < 38         = p -- no rounding
  | d5 < 3         = p + d5 -- rounding to next multiple of 5
  | otherwise         = p
  where
    m5 = (mod p 5)
    d5 = (5 - m5)

main = interact $ intercalate "\n" . map show . map roundGrade . map read . tail . words
