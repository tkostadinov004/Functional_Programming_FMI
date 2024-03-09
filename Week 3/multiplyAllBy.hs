main :: IO()
main = do
    print $ multiplyAllBy [1,2,3,4,5] 5

multiplyAllBy :: [Int] -> Int -> [Int]
multiplyAllBy xs z = [x * z | x <- xs]