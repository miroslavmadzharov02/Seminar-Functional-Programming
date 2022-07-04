{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant lambda" #-}
{-# HLINT ignore "Redundant bracket" #-}

main :: IO()
main = do
    --print $ (kthNumber [-2, 3, 5, -4, -13, -15, 20, -21] (> 5)) 12 -- == error “No such number” 
    print $ (kthNumber [-2, 3, 5, -4, -13, -15, 20, -21] (>= 5)) 2 == 20

kthNumber :: [Int] -> (Int -> Bool) -> (Int -> Int)
kthNumber xs p = (\k -> if length filtered < k then error "No such number" else filtered!!(k-1))
    where
        filtered = (filter p xs)