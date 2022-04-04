sumDigitsRec :: Int -> Int 
sumDigitsRec 0 = 0
sumDigitsRec num = mod num 10 + sumDigitsRec (div num 10)