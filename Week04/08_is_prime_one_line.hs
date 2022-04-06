isPrime :: Int -> Bool 
isPrime num = num > 1 && [1, num] == [x | x <- [1..num], mod num x == 0]