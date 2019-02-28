
getLineAsInts :: IO [Int]
getLineAsInts = do
  line <- getLine
  return $ map read $ words line

solve :: IO Int
solve = do
  let foldPlus = foldl1 (+)
  [budget, keyboards, usbDrives] <- getLineAsInts
  keyboardPrices <- getLineAsInts
  usbDrivePrices <- getLineAsInts
  let pairs = [[kbp, udp] | kbp <- keyboardPrices, udp <- usbDrivePrices]
  let filtered = filter (<= budget) $ map foldPlus pairs
  if filtered == []
    then return (-1)
    else return $ maximum $ filtered

main :: IO ()
main = do
  result <- solve
  putStrLn $ show result
