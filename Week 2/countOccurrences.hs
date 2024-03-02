main :: IO()
main = do
    print $ countOccurrencesRec 1423445 4
    print $ countOccurrencesRec 19000 0
    print $ countOccurrencesRec 123445 8
    print $ countOccurrencesRec 10 0

countOccurrencesRec :: Int -> Int -> Int
countOccurrencesRec num digit
    | num < 10  = (if num == digit then 1 else 0)
    | otherwise = (if (num `mod` 10) == digit then 1 else 0) + (countOccurrencesRec (num `div` 10) digit)
 
countOccurrencesIter :: Int -> Int -> Int
countOccurrencesIter num digit = helper num digit 0
    where
    helper 0 0 count = 1
    helper 0 digit count = count
    helper num digit count = helper (num `div` 10) digit (if (num `mod` 10) == digit then (count + 1) else count)