import Data.List (sort)

main :: IO()
main = do
    print $ biggestNumber [1,2,3,4,5] == 54321 
    print $ biggestNumber [1,5,5,3,5] == 55531

biggestNumber :: [Int] -> Int
biggestNumber xs = listToInt $ reverse $ sort xs

listToInt :: [Int] -> Int
listToInt xs = helper xs 0
    where
        helper [] num = num
        helper (x:xs) num = helper xs (num * 10 + x)