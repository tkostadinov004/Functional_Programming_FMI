import Data.Char

main :: IO()
main = do
    print $ numToDigits 1234

numToDigits :: Int -> [Int]
numToDigits n = [ord x - ord '0' | x <- show n]