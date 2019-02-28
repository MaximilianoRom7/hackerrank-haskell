-- https://www.hackerrank.com/challenges/angry-professor/problem


isClassCanceled :: [Char] -> [Int] -> [Char]
isClassCanceled response [] = response
isClassCanceled response nums = out
  where
    (howMany : bePresent : rest) = nums
    (studentsArribal, others) = splitAt howMany rest
    newResponse = if bePresent > (length $ filter (<= 0) studentsArribal)
      then response ++ "YES\n"
      else response ++ "NO\n"
    out = isClassCanceled newResponse others

solve :: [Int] -> [Char]
solve nums = result
  where
    result = isClassCanceled "" nums

main = interact $ solve . map read . tail . words
