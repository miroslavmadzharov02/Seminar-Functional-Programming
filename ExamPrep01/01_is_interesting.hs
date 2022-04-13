sumDigitsNum :: Int -> Int
sumDigitsNum 0 = 0
sumDigitsNum num
    | num <= 9 = num
    | otherwise = mod num 10 + sumDigitsNum (div num 10) 

isInteresting :: Int -> Bool
isInteresting num = mod num (sumDigitsNum num) == 0