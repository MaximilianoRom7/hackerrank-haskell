

countValleys :: Int -> Int -> [Char] -> Int
countValleys _ valleys [] = valleys
countValleys hight valleys steps =
  if hight == -1
  then if h == 'U'
       then countValleys (succ hight) (succ valleys) rest
       else countValleys (pred hight) valleys rest
  else if h == 'U'
       then countValleys (succ hight) valleys rest
       else countValleys (pred hight) valleys rest
  where
    h = head steps
    rest = tail steps

solve :: [Char] -> Int
solve steps = count
  where
    count = countValleys 0 0 steps

main = interact $ show . solve . last . words
