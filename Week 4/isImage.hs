main :: IO()
main = do
    print $ isImage [1,2,3,4,5] [3,4,5,6,7]

getDifferences :: [Int] -> [Int] -> [Int]
getDifferences as bs
    | as == [] || bs == []  = []
    | otherwise = ((head as) - (head bs)) : (getDifferences (tail as) (tail bs))
 
isImage :: [Int] -> [Int] -> Bool
isImage [_] _ = True
isImage (a1:a2:as) (b1:b2:bs) =
  a1 - b1 == a2 - b2 && isImage (a2:as) (b2:bs)