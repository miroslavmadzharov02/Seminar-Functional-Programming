main :: IO ()
main = do
    print $ calculateSum 5 0 == 1
    print $ calculateSum 5 1 == 6
    print $ calculateSum 10 1 == 11
    print $ calculateSum 1 11 == 12
    print $ calculateSum 2 11 == 4095

calculateSum :: Int -> Int -> Int 
calculateSum num powRange = helper 1 
    where
    helper iterator
        | powRange == 0 = 1
        | iterator == powRange = num ^ iterator + 1
        | otherwise = num ^ iterator + helper (iterator + 1)