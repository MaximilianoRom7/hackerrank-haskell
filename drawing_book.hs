solve :: [Int] -> Int
solve input = pagesToTurn
  where
    pagesOfBook = input !! 0
    pageToGo = input !! 1
    pages = if mod pagesOfBook 2 == 0
      then min pageToGo (pagesOfBook - pageToGo + 1)
      else min pageToGo (pagesOfBook - pageToGo)
    pagesToTurn = div pages 2

main = interact $ show . solve . map read . words
