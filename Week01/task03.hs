factIter :: Int -> Int 
factIter num 
    | num < 0 = error "Negative number inputted."
    | otherwise = helper num 1
    where
    helper num result
        | num == 1 = result
        | otherwise = num * helper (num - 1) result

factRec :: Int -> Int 
factRec 0 = 1
factRec num 
    | num < 0 = error "Negative number inputted."
    | otherwise = num * factRec (num - 1)