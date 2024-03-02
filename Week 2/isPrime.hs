main :: IO()
main = do
    print $ isPrime 2
    print $ isPrime 5
    print $ isPrime 15
    print $ isPrime 39
    print $ isPrime 19
    print $ isPrime 124

isPrime :: Int -> Bool
isPrime 1 = False
isPrime n = helper 2
    where
    helper d
        | n == d = True
        | mod n d == 0 = False
        | otherwise = helper (d + 1)