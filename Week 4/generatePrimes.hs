main :: IO()
main = do
    print $ generatePrimes 1 100

isPrime :: Int -> Bool
isPrime num = [1, num] == [x | x <- [1..num], (mod num x) == 0]

generatePrimes :: Int -> Int -> [Int]
generatePrimes a b = [x | x <- [a..b], (isPrime x)]