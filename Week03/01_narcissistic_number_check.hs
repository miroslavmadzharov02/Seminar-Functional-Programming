main :: IO ()
main = do
    print $ isNumNarcissistic 7 == True
    print $ isNumNarcissistic 12 == False
    print $ isNumNarcissistic 370 == True
    print $ isNumNarcissistic 371 == True
    print $ isNumNarcissistic 1634 == True

digitsAmount :: Int -> Int 
digitsAmount 0 = 0
digitsAmount num = 1 + digitsAmount (div num 10)

isNumNarcissistic :: Int -> Bool
isNumNarcissistic num = num == helper num (digitsAmount num) 0
    where
    helper 0 _ result = result
    helper num digCount result = helper (div num 10) digCount (result + ((mod num 10) ^ digCount))