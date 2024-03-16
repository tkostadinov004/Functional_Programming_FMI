main :: IO()
main = do
    print $ chunksOf 4 [1..10]

chunksOf :: Int -> [Int] -> [[Int]]
chunksOf _ [] = []
chunksOf n xs = take n xs : chunksOf n (drop n xs)