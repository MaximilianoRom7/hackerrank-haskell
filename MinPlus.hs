import Data.List
import Text.Printf

solvePlusMinus nums = [positiveRadio, negativeRadio, zeroRadio]
    where
        lengthNums = fromIntegral $ length nums
        filterAndLength f = (fromIntegral $ length $ filter f nums)
        positiveRadio = filterAndLength (>0) / lengthNums
        negativeRadio = filterAndLength (<0) / lengthNums
        zeroRadio = filterAndLength (==0) / lengthNums

parseFloat :: (PrintfType a) => Double -> a
parseFloat n = printf "%.6f" n

main = interact $ unwords . map parseFloat . solvePlusMinus . map read . tail . words
