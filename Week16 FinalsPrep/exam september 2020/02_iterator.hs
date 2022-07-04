main :: IO()
main = do
    print $ iterator [3, 4, 5] (+1)
    print $ not (iterator [1, 2, 4] (+1))

iterator :: [Int] -> (Int -> Int) -> Bool
iterator xs f = helper xs
    where
        helper [] = True
        helper (x:xs)
            | null xs = True
            | head xs == f x = helper xs
            | otherwise = False