myLengthFunc :: [Int] -> Int  
myLengthFunc = length 

myLengthRecPM :: [Int] -> Int 
myLengthRecPM [] = 0
myLengthRecPM (_:xs) = 1 + myLengthRecPM xs

myLengthRecNonPM :: [Int] -> Int 
myLengthRecNonPM xs 
    | null xs = 0
    | otherwise = 1 + (myLengthRecNonPM (tail xs))