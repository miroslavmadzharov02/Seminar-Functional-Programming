sumDivs :: Int -> Int 
sumDivs num = sum [x | x <- [1..num], mod num x == 0]