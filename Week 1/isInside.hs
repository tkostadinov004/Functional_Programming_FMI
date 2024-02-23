main :: IO()
main = do
    print (isInside 5 10 20)
    print (isInside 5 5 20)
    print (isInside 5 1 5)
    print (isInside 5 1 4)

isInside :: Int -> Int -> Int -> Bool
isInside x a b = x >= a && x <= b