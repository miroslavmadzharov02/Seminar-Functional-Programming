powRec :: Int -> Int -> Int
powRec num 1 = num
powRec num pow = num * powRec num (pow - 1)

powIter :: Int -> Int -> Int
powIter num pow = helper num pow 1
    where
    helper num 1 result = result * num
    helper num pow result = helper num (pow - 1) (result * num)