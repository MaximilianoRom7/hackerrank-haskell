

solve :: [Int] -> Int
solve xs = result
  where
    maxJumpHeight = head xs
    hurdles = tail xs
    maxHurdleHeight = maximum hurdles
    result = if maxJumpHeight >= maxHurdleHeight
      then 0
      else maxHurdleHeight - maxJumpHeight

main :: IO ()
main = interact $ show . solve . map read . tail . words
