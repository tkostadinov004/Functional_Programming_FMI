main :: IO()
main = do
    print $ countDigits 1
    print $ countDigits 10
    print $ countDigits 123
    print $ countDigits 1234
 
countDigits :: Int -> Int
countDigits n = helper n 0
    where 
    helper 0 0 = 1
    helper 0 count = count
    helper n count = helper (n `div` 10) (count + 1) 