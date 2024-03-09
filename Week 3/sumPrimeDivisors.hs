main :: IO()
main = do
    print $ sumPrimeDivisors 100

isPrime :: Int -> Bool
isPrime n = [1, n] == [x | x <- [1..n], mod n x == 0]

sumPrimeDivisors :: Int -> Int
sumPrimeDivisors n = (sum [x | x <- [1..n], n `mod` x == 0, isPrime x])