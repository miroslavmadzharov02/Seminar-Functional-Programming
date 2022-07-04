import Data.Char (digitToInt)

main :: IO()
main = do
    print $ digits 4321 == [4,3,2,1]
    print $ decreasing [4,3,2,1]
    print $ not (decreasing [4,3,5,1])
    print $ not (decreasing [4,3,3,1])
    print $ decDigits 4321
    print $ not (decDigits 4322)
    print $ not (decDigits 7635)

digits :: Int -> [Int]
digits = map digitToInt . show

decreasing :: [Int] -> Bool
decreasing [] = False
decreasing (x:xs)
    | length xs == 1 = head xs < x
    | x > head xs = decreasing xs
    | otherwise = False

decDigits :: Int -> Bool
decDigits x = decreasing (digits x)