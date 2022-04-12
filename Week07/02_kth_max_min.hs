import Data.List (nub, sort)
sortList :: [Int] -> [Int]
sortList = reverse . sort . nub . filter (<0)

kthMaxMin  ::  [Int]  -> (Int  ->  Int)
kthMaxMin xs = (\k -> if length (sortList xs) < k then error "No such number"
                else (sortList xs)!!(k-1))