specialSum :: (Int -> Int) -> [Int] -> ((Int -> Bool) -> Int)
specialSum f xs = (\ p -> sum [ x * x | x <- xs, p (f x)])