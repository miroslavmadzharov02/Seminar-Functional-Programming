removeAllRec :: Int -> [Int] -> [Int]
removeAllRec _ [] = []
removeAllRec num (x:xs)
    | num == x = removeAllRec num xs 
    | otherwise = num : removeAllFunc num xs

removeAllFunc :: Int -> [Int] -> [Int]
removeAllFunc num xs = filter (/= num) xs 