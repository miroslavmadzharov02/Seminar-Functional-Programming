removeFirst :: Int -> [Int] -> [Int]
removeFirst num [] = []
removeFirst num (x:xs) 
    | x == num = xs
    | otherwise = x : removeFirst num xs