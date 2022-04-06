incrementListValues :: Int -> [Int] -> [Int]
incrementListValues _ [] = []
incrementListValues num (x:xs) = x + num : incrementListValues num xs