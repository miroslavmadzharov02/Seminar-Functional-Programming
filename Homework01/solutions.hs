main :: IO ()
main = do
    --tests for task 1
    print $ sumCountsIter 1 1 == 1
    print $ sumCountsIter 5123 1 == 19
    print $ sumCountsIter 1234 8 == 10
    print $ sumCountsIter 5555 5 == 10
    print $ sumCountsIter 65432 6 == 11
    print $ sumCountsIter 70000 1 == 11
    print $ sumCountsIter 123321 1 == 29
    --tests for task 2
    print $ maxRotation 56789 == 68957
    print $ maxRotation 12490 == 29140

--TASK ONE SOLUTION STARTS HERE
sumOfDigits :: Int -> Int
sumOfDigits 0 = 0
sumOfDigits x = mod x 10 + sumOfDigits (div x 10)

{- get amount of instances of number in digit
countOfDigitInNumber 1233 3 == 2
countOfDigitInNumber 1233 4 == 0 -}
countOfDigitInNumber :: Int -> Int -> Int
countOfDigitInNumber 0 _ = 0
countOfDigitInNumber num digit
    | mod num 10 == digit = countOfDigitInNumber (div num 10) digit + 1
    | otherwise = countOfDigitInNumber (div num 10) digit

sumCountsIter :: Int -> Int -> Int
sumCountsIter x d
    | x < 1 = error "Inputted x is not a natural number!"
    | d < 0 || d > 9 = error "Inputted digit is out of bounds!"
    | otherwise = sumCountsHelper 0 1 x
    where
    sumCountsHelper sum iterator end
        | iterator == (end + 1) = sumOfDigits sum
        | otherwise = sumCountsHelper (countOfDigitInNumber iterator d + sum) (iterator + 1) end
-- TASK ONE SOLUTION ENDS HERE

-- TASK TWO SOLUTION STARTS HERE
getNumDigits :: Int -> Int
getNumDigits num
    | num <= 9 = 1
    | otherwise = getNumDigits (div num 10) + 1

--putFirstDigitToLast 1234 == 2341
putFirstDigitToLast :: Int -> Int
putFirstDigitToLast num = 10 * mod num (10 ^ (getNumDigits num - 1)) + div num (10 ^ (getNumDigits num - 1))

--getSavedDigits returns the saved digits and fills the rest with zeros
--getSavedDigits 1234 2 == 1200
--getSavedDigits 1234 3 == 1230
getSavedDigits :: Int -> Int -> Int
getSavedDigits num savedDigits = 10 ^ (getNumDigits num - savedDigits) * div num (10 ^ (getNumDigits num - savedDigits))

--getNonSavedDigits 1234 2 == 34
getNonSavedDigits :: Int -> Int -> Int
getNonSavedDigits num savedDigits = mod num (10 ^ (getNumDigits num - savedDigits))

rotateLeft :: Int -> Int -> Int
rotateLeft num savedDigits
    | savedDigits > getNumDigits num = error "Saved digits can't be larger than amount of number digits!"
    | savedDigits == getNumDigits num || savedDigits == getNumDigits num - 1 = num
    | getNumDigits (getNonSavedDigits num savedDigits) < getNumDigits num - savedDigits = getSavedDigits num savedDigits + 10 * getNonSavedDigits num savedDigits
    | otherwise = getSavedDigits num savedDigits + putFirstDigitToLast (getNonSavedDigits num savedDigits)

listOfRotations :: Int -> [Int]
listOfRotations num = helper num 0 [num]
    where
    helper num iterator resultList
        | iterator == getNumDigits num - 1 = resultList
        | otherwise = helper (rotateLeft num iterator) (iterator + 1) (rotateLeft num iterator : resultList)

maxRotation :: Int -> Int
maxRotation num
    | num == 0 = 0
    | num < 0 = error "Inputted number is out of bounds!"
    | otherwise = maximum (listOfRotations num)
-- TASK TWO SOLUTION ENDS HERE