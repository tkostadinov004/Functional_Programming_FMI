main :: IO()
main = do
    print (fibIter 5)

fibRec :: Int -> Int
fibRec 0 = 1
fibRec 1 = 1
fibRec n = (fibRec (n - 1)) + (fibRec (n - 2))

fibIter :: Int -> Int
fibIter n = fibIterHelper 0 1 0
  where
    fibIterHelper previous current i =
      if i == n then current 
      else fibIterHelper current (previous + current) (i + 1)