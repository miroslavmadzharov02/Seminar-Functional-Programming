import Data.List (nub)

main :: IO()
main = do
    print $ findJudge 2 [(1, 2)]                                 == 2 
    print $ findJudge 3 [(1, 3), (2, 3)]                         == 3 
    print $ findJudge 3 [(1, 3), (2, 3), (3, 1)]                 == -1 
    print $  findJudge 3 [(1, 2), (2, 3)]                        == -1 
    print $ findJudge 4 [(1, 3), (1, 4), (2, 3), (2, 4), (4, 3)] == 3

findJudge :: Int -> [(Int, Int)] -> Int
findJudge n g = convert $ filter isJudge [1..n]
    where
        convert :: [Int] -> Int
        convert [] = -1
        convert (x:_) = x

        isJudge :: Int -> Bool
        isJudge = \x -> trustedByEveryone x && trustsNoOne x

        trustedByEveryone :: Int -> Bool
        trustedByEveryone x = n - 1 == length (nub $ map fst (filter (\ (a , b) -> b == x) g))

        trustsNoOne :: Int -> Bool
        trustsNoOne x = null [a | (a, _) <- g, a == x]