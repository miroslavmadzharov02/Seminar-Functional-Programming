main :: IO()
main = do
    print $ removeEveryKth 3 [1,2,3,4,5,6,7,8,9] == [1,2,4,5,7,8] 
    print $ removeEveryKth 4 [1,2,3,4,5,6,7]     == [1,2,3,5,6,7]

removeEveryKth :: Int -> [a] -> [a]
removeEveryKth k xs = helper xs 1
    where
        helper :: [a] -> Int -> [a]
        helper [] _ = []
        helper (x:xs) index
            | index == k = helper xs 1
            | otherwise = x : helper xs (index + 1)