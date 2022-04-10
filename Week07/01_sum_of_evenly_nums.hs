countDivs :: Int -> Int 
countDivs num = helper 1 0
    where
        helper iterator result
            | iterator > num = result
            | mod num iterator == 0 = helper (iterator + 1) (result + 1)
            | otherwise = helper (iterator + 1) result

sumOfEvenly :: Int -> Int -> Int 
sumOfEvenly x y = sum [x | x <- [min x y..max x y], even (countDivs x)]