sumDigits :: Int -> Int 
sumDigits num 
    | num <= 0 = error "Input is not a natural number!"
    | num <= 9 = num
    | otherwise = mod num 10 + sumDigits (div num 10)

digitalRoot :: Int -> Int 
digitalRoot num
    | div num 10 == 0 = num
    | otherwise = digitalRoot (sumDigits num)