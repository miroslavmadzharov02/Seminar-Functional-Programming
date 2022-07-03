main :: IO()
main = do
    print $ factorize 13  == [13] 
    print $ factorize 152 == [2,2,2,19] 
    print $ factorize 123 == [3,41] 

factorize :: Int -> [Int]
factorize num = helper num 2
 where
     helper :: Int -> Int -> [Int]
     helper 1 _ = []
     helper leftover divs
      | mod leftover divs == 0 = divs : helper (div leftover divs) divs
      | otherwise = helper leftover (divs + 1)