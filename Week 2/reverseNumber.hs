main :: IO()
main = do
    print $ reverseNumber 12345

reverseNumber :: Int -> Int
reverseNumber n = helper n 0
    where
    helper 0 result = result
    helper n result = helper (n `div` 10) ((result * 10) + (n `mod` 10))