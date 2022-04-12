areNumsEqual :: Int -> Int -> Bool
areNumsEqual num1 num2 = num1 == num2 

isListAscending :: [Int] -> Bool
isListAscending [] = True
isListAscending [num] = True 
isListAscending (ai:aj:as) = ai < aj && isListAscending (aj:as)

checkSequence :: [Int] -> Bool    
checkSequence [] = True
checkSequence [num] = True
checkSequence (ai:aj:as) = not (areNumsEqual ai aj) && isListAscending (ai:aj:as) && checkSequence (aj:as)