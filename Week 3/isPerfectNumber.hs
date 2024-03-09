main :: IO()
main = do
    print $ isPerfectNumber 0
    print $ isPerfectNumber 6
    print $ isPerfectNumber 28

isPerfectNumber :: Int -> Bool
isPerfectNumber n = n == (sum [x | x <- [1..(n `div` 2 + 1)], n `mod` x == 0])