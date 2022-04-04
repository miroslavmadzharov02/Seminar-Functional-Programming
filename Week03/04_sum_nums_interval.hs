main :: IO ()
main = do
    print $ sumNumbers 1 9 == 45
    print $ sumNumbers 199 203 == 200
    print $ sumNumbers 219 225 == 663
    print $ sumNumbers 225 219 == 663

areDigitsDesc :: Int -> Bool 
areDigitsDesc num = num < 10 || mod num 10 <= mod (div num 10) 10 && areDigitsDesc (div num 10)

sumNumbers :: Int -> Int -> Int 
sumNumbers start finish = helper (min start finish)
    where
    helper :: Int -> Int 
    helper iterator
        | iterator > max start finish = 0
        | areDigitsDesc iterator = iterator + helper (iterator + 1)
        | otherwise = helper (iterator + 1)