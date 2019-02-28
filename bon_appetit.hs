import Text.Printf

solve1 :: [Int] -> String
solve1 (lengthBill : exclude : billAndCharge) = result
  where
    bill = init billAndCharge
    charge = fromIntegral $ last billAndCharge
    billAnna = fromIntegral $ foldl1 (+) bill - bill !! exclude
    rigth = billAnna / 2
    diff = charge - rigth
    result = if diff == 0.0
      then "Bon Appetit"
      else show $ floor diff

-- main = interact $ solve1 . map read . words

solve2 :: [Int] -> String
solve2 (lengthBill : exclude : billAndCharge) = result
  where
    bill = init billAndCharge
    charge = last billAndCharge
    billAnna = foldl1 (+) bill - bill !! exclude
    rigth = div billAnna 2
    diff = charge - rigth
    result = if diff == 0
      then "Bon Appetit"
      else show diff


main = interact $ solve2 . map read . words
