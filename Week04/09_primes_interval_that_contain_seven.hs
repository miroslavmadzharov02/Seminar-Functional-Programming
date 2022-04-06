isPrime :: Int -> Bool 
isPrime num = num > 1 && [1, num] == [x | x <- [1..num], mod num x == 0]

containsNum :: Int -> Int -> Bool 
containsNum 0 0 = True 
containsNum _ 0 = False 
containsNum digit num
    | mod num 10 == digit = True
    | otherwise = containsNum digit (div num 10)

getPrimesLC :: Int -> Int -> [Int]
getPrimesLC a b = [ x | x <- [min a b .. max a b], isPrime x && containsNum 7 x]

getPrimesHOF :: Int -> Int -> [Int]
getPrimesHOF a b = filter (\x -> isPrime x && containsNum 7 x) [min a b .. max a b]