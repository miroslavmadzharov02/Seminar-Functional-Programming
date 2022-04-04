fibRec :: Integer -> Integer
fibRec 0 = 0
fibRec 1 = 1
fibRec pos = fibRec (pos - 1) + fibRec (pos - 2)

fibIter :: Integer -> Integer 
fibIter num = helper num 0 1
    where
        helper :: Integer -> Integer -> Integer -> Integer
        helper 0 num1 _ = num1
        helper 1 _ num2 = num2
        helper num num1 num2 = helper (num - 1) num2 (num1 + num2)