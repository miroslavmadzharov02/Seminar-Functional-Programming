import Data.List (nub)

main :: IO()
main = do
    print $ persistence 39 == (3,[27,14,4])
    print $ persistence 999 == (4,[729,126,12,2])
    print $ persistence 126 == (2,[12,2])
    print $ persistence 4 == (1,[4])

productDigitsNum :: Int -> Int
productDigitsNum 0 = 0
productDigitsNum num
    | num <= 9 = num
    | otherwise = mod num 10 * productDigitsNum (div num 10) 

productDigitsList :: Int -> [Int]
productDigitsList 0 = [0]
productDigitsList num
    | num < 0 = error "Inputted number must be natural"
    | num <= 9 = [num]
    | otherwise = productDigitsNum num : productDigitsList (productDigitsNum num)

persistence  ::  Int  ->  (Int,  [Int])
persistence num = (length (nub (productDigitsList num)), nub (productDigitsList num))