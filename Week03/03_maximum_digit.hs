main :: IO ()
main = do
    print $ findMax 55345 == 5
    print $ findMax 14752 == 7
    print $ findMax 329450 == 9
    print $ findMax 9521 == 9

findMax :: Int -> Int 
findMax num = helper num 0
    where
        helper :: Int -> Int -> Int
        helper 0 result = result
        helper num result 
            | (mod num 10) > result = helper (div num 10) (mod num 10)
            | otherwise = helper (div num 10) result