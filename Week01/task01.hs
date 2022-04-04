minIf :: Int -> Int -> Int 
minIf num1 num2 = if num1 > num2 then num2 else num1

minGuard :: Int -> Int -> Int 
minGuard num1 num2 
    | num1 > num2 = num2
    | otherwise = num1

minBuiltIn :: Int -> Int -> Int 
minBuiltIn num1 num2 = minimum (num1, num2)

lastDigit :: Int -> Int 
lastDigit num = mod num 10

quotientWhole :: Int -> Int -> Int
quotientWhole dividend divisor = div dividend divisor 

divWhole :: Int -> Int -> Double
divWhole dividend divisor = fromIntegral dividend / fromIntegral divisor

removeLastDigit :: Int -> Int 
removeLastDigit num = div num 10

avgWhole :: Int -> Int -> Double
avgWhole x y = (fromIntegral $ x + y) / 2

roundTwoDig :: Double -> Double
roundTwoDig x = (fromIntegral $ round $ x * 100) / 100

-- 3.1413465345321
-- 314
-- 3.14