isPrime :: Int -> Bool 
isPrime num = num > 1 && helper 2
    where
    helper :: Int -> Bool
    helper iterator
        | mod num iterator == 0 = False 
        | (fromIntegral iterator) >= (sqrt $ fromIntegral num) = True
        | otherwise = helper (iterator + 1)