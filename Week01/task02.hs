areNotEqual :: Int -> Int -> Bool 
areNotEqual num1 num2 = num1 /= num2

areNotEqualGuards :: Int -> Int -> Bool 
areNotEqualGuards num1 num2
    | num1 /= num2 = True 
    | otherwise = False 

isNumInInterval :: Int -> Int -> Int -> Bool 
isNumInInterval num leftBorder rightBorder = num >= min leftBorder rightBorder && num <= max leftBorder rightBorder