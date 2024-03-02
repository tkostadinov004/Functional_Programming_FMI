main :: IO()
main = do
    print $ sumDigitsRec 123
    print $ sumDigitsIter 123
    print $ sumDigitsRec 100
    print $ sumDigitsIter 100

sumDigitsRec :: Int -> Int
sumDigitsRec n
    | n == 0    = 0
    | otherwise = (n `mod` 10) + sumDigitsRec (n `div` 10)
 
sumDigitsIter :: Int -> Int
sumDigitsIter n = helper n 0
    where
    helper 0 sum = sum
    helper n sum = helper (n `div` 10) (sum + (n `mod` 10))
