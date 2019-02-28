import Data.List
import Text.Printf

daysGreNor = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
daysGreBis = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
daysJulNor = [29, 28, 31, 29, 31, 29, 31, 29, 29, 31, 29, 29]
daysJulBis = [29, 23, 31, 29, 31, 29, 31, 29, 29, 31, 29, 29]
-- daysJulNor = [30, 29, 32, 30, 32, 30, 32, 30, 30, 32, 29, 29]
-- daysJulBis = [30, 30, 32, 30, 32, 30, 32, 30, 30, 32, 29, 29]

dayOfProgrammer :: [Int] -> [Int]
dayOfProgrammer days = date
  where
    date = dayAndMonth 256 days

dayAndMonth :: Int -> [Int] -> [Int]
dayAndMonth day days = date
  where
    internal :: (Int, Int) -> [Int] -> [Int]
    internal (days, month) [] = [days, month]
    internal (days, month) (d:ds) = result
      where
        nDay = days - d
        nMonth = month + 1
        result = if nDay > 0
          then internal (nDay, nMonth) ds
          else [days, month]
    date = internal (day, 1) days

solve :: Int -> String
solve year = date
  where
    date = intercalate "." $ map (printf "%02d") $ dayAndMondthGre ++ [year]
    dayAndMondthGre
      | year < 1918 =
        if mod year 4 == 0
        then dayOfProgrammer daysGreBis
        else dayOfProgrammer daysGreNor
      | year > 1918 =
        if mod year 400 == 0 || mod year 4 == 0 && not (mod year 100 == 0)
        then dayOfProgrammer daysGreBis
        else dayOfProgrammer daysGreNor
      | year == 1918 = [d+13, m]
      where
        (d:m:rest) = dayOfProgrammer daysGreNor

main = interact $ solve . read . head . words
