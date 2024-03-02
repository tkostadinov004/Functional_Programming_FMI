main :: IO()
main = do
    print $ isAscending 1259
    print $ isAscending 1243
    print $ isAscending 100

isAscending :: Int -> Bool
isAscending n
    | n < 10 = True
    | otherwise = (n `mod` 10) > ((n `div` 10) `mod` 10) && isAscending (n `div` 10) 