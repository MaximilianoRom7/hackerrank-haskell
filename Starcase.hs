printStarecase :: Int -> Int -> String
printStarecase _ 0 = ""
printStarecase t c = replicate s ' ' ++ replicate p '#' ++ "\n" ++ printStarecase t (c - 1)
  where
    p = (t - c + 1)
    s = t - p

connectArgs arg = printStarecase arg arg

main = interact $ connectArgs . read . (!! 0) . words
