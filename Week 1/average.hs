main :: IO()
main = do
    print (calcAverage 20 10)

pow2 :: Int -> Double
pow2 n = fromIntegral(n * n)

calcAverage :: Int -> Int -> Double
calcAverage a b = (pow2(a) + pow2(b)) / 2