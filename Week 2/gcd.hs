main :: IO()
main = do
    print $ myGcd 24 12
 
myGcd :: Int -> Int -> Int
myGcd a b = if b == 0 then a else myGcd b (a `mod` b)