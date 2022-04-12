factorize :: Int -> [Int]
factorize num = helper num 2
 where
     helper :: Int -> Int -> [Int]
     helper 1 _ = []
     helper leftover divs
      | mod leftover divs == 0 = divs : helper (div leftover divs) divs
      | otherwise = helper leftover (divs + 1)