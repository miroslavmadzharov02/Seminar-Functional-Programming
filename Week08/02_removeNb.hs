removeNb :: Int -> [(Int, Int)]
removeNb num = [(x, y) | x <- [1..num] , y <- [1..num], x /= y && sum [1..num] - x - y == x * y]