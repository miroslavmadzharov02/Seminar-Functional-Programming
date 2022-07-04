main :: IO()
main = do
    print $ findNb 1071225            == 45 
    print $ findNb 40539911473216     == 3568 
    print $ findNb 135440716410000    == 4824 
    print $ findNb 4183059834009      == 2022 
    print $ findNb 91716553919377     == -1 
    print $ findNb 24723578342962     == -1

findNb :: Integer -> Integer
findNb m = helper m 1
    where
        helper 0 i = i - 1
        helper m i
            | m < 0 = -1
            | otherwise = helper (m - i ^ 3) (i + 1)