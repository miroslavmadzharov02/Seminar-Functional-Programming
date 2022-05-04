import Data.List(nub)

findJudge :: Int -> [(Int, Int)] -> Int
findJudge n g = convert $ filter isJudge [1..n]
    where
        convert :: [Int] -> Int
        convert [] = -1
        convert (x:_) = x

        isJudge :: Int -> Bool
        isJudge x = trustsNoOne x && trustedByEveryone x

        trustsNoOne :: Int -> Bool
        trustsNoOne x = null [a | (a, _) <- g, x == a]

        trustedByEveryone :: Int -> Bool
        trustedByEveryone x = n - 1 == (length $ nub $ map fst (filter (\ (a , b) -> b == x) g))