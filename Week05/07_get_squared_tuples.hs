getSquares :: Int -> Int -> Int -> [(Int, Int)]
getSquares s f k = [ (x, x * x) | x <- [s, s + k .. f]]