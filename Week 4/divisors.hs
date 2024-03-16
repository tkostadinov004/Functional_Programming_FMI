main :: IO()
main = do
    print $ divisors 28

divisors :: Integer -> [Integer]
divisors num = [x | x <- [1..(div num 2)], (mod num x) == 0]