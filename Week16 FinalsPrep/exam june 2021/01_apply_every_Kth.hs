main :: IO()
main = do
    print $ applyEveryKth (* 2) 3 [1..6] == [1,2,6,4,5,12] 
    print $ applyEveryKth (+ 2) 4 [1..7] == [1,2,3,6,5,6,7]

applyEveryKth :: (a -> a) -> Int -> [a] -> [a]
applyEveryKth f k xs = helper 1 xs
    where
        helper _ [] = []
        helper i (x:xs)
            | i == k = f x : helper 1 xs
            | otherwise = x : helper (i + 1) xs