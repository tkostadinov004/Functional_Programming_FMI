main :: IO()
main = do
    print $ pow 2 3
    print $ pow 0.5 3
    print $ pow 3 10

pow :: Double -> Int -> Double
pow num power
    | power == 0    = 1
    | otherwise     = (num * (pow num (power - 1)))