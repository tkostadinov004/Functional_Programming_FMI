main :: IO()
main = do
    print (myMin 20 10)

myMin :: Int -> Int -> Int
myMin a b = if a <= b then a 
            else b