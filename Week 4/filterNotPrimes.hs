main :: IO()
main = do
    print $ filterNotPrimes [1..100]

isPrime :: Int -> Bool
isPrime num = [1, num] == [x | x <- [1..num], (mod num x) == 0]

filterNotPrimes :: [Int] -> [Int]
filterNotPrimes xs = [x | x <- xs, (isPrime x)]