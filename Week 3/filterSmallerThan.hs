main :: IO()
main = do
    print $ filterSmallerThan [1..20] 10

filterSmallerThan :: [Int] -> Int -> [Int]
filterSmallerThan xs n = [x | x <- xs, x >= n]