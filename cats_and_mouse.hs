-- https://www.hackerrank.com/challenges/cats-and-a-mouse/problem

whoCatchTheMouse :: [Char] -> [Int] -> [Char]
whoCatchTheMouse response [] = response
whoCatchTheMouse response nums = out
  where
    (catAPoss : catBPoss : mousePoss : rest) = nums
    diffA = abs $ mousePoss - catAPoss
    diffB = abs $ mousePoss - catBPoss
    toConcat = if diffA == diffB
      then "Mouse C\n"
      else if diffA < diffB
           then "Cat A\n"
           else "Cat B\n"
    out = whoCatchTheMouse (response ++ toConcat) rest

solve :: [Int] -> [Char]
solve xs = response
  where
    nums = tail xs
    response = whoCatchTheMouse "" nums

main = interact $ solve . map read . words
