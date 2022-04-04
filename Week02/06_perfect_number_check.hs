sumDivisors :: Int -> Int 
sumDivisors num = helper 1
    where
    helper :: Int -> Int
    helper iterator
        | num - 1 < iterator = 0
        | mod num iterator == 0 = iterator + helper (iterator + 1)
        | otherwise = helper (iterator + 1)

sumDigitsRec :: Int -> Int 
sumDigitsRec 0 = 0
sumDigitsRec num = mod num 10 + sumDigitsRec (div num 10)

isPerfect :: Int -> Bool 
isPerfect num = num > 1 && num == sumDigitsRec (sumDivisors num)