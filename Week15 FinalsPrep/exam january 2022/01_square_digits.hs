import Data.Char ( digitToInt )

main :: IO()
main = do
    print $ squareDigits 9119  == 811181
    print $ squareDigits (-9119) == -811181

squareDigits :: Int-> Int
squareDigits n
 | n < 0 = (*(-1)) $ read $ concatMap (show.(^2).digitToInt) (show $ abs n)
 | otherwise = read $ concatMap (show.(^2).digitToInt) (show $ abs n)