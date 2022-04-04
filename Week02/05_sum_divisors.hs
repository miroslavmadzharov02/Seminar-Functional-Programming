sumDivisors :: Int -> Int 
sumDivisors num = helper 1
    where
    helper :: Int -> Int
    helper iterator
        | num < iterator = 0
        | mod num iterator == 0 = iterator + helper (iterator + 1)
        | otherwise = helper (iterator + 1)