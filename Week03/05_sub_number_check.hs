main :: IO ()
main = do
    print $ subNum 123 5123783 == True -- x = 123, y = 5123783
    print $ subNum 0 0 == True
    print $ subNum 10 101 == True
    print $ subNum 101 101 == True
    print $ subNum 10 0 == False
    print $ subNum 1253 5123783 == False
    print $ subNum 12 0 == False

numDigits :: Int -> Int 
numDigits num
    | num < 0 = error "negative number"
    | num <= 9 = 1
    | otherwise = 1 + numDigits (div num 10)

subNum :: Int -> Int -> Bool 
subNum subset num = helper num (10 ^ numDigits subset)
    where
    helper :: Int -> Int -> Bool
    helper num powOfTen
        | subset > num = False
        | mod num powOfTen == subset = True 
        | otherwise = helper (div num 10) powOfTen