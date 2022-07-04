{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# HLINT ignore "Redundant lambda" #-}


main::IO()
main = do
    print $ (getIndices [2, 7, 11, 15]) 9 == (0, 1)
    print $ (getIndices [3, 2, 4]) 6 == (1, 2)
    print $ (getIndices [3, 3]) 6 == (0, 1)

getIndices ::  [Int] -> (Int -> (Int,Int))
getIndices xs = (\x -> head [(pos1, pos2) | (x1, pos1) <- zip xs [0..], (x2, pos2) <- zip xs [0..], x == x1 + x2 && pos1 /= pos2])