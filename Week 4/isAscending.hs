import Data.Char

main :: IO()
main = do
    print $ isAscending 1234

isAscending' :: [Char] -> Bool
isAscending' [] = True
isAscending' [x] = True
isAscending' (x:y:xs) = (ord x < ord y) && (isAscending' (y:xs))
 
isAscending :: Int -> Bool
isAscending num = isAscending' (show num)