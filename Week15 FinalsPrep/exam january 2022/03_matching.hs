main :: IO()
main = do
    print $ null (matching "1234")
    print $ matching ",[.[-],]" == [(3,5),(1,7)]
    print $ matching ",+[-.,+]" == [(2,7)]
    print $ matching "[][]" == [(0,1),(2,3)]

matching :: String -> [(Int, Int)]
matching xs = helper (zip xs [0 ..]) []
 where
     helper :: [(Char, Int)] -> [(Int, Int)] -> [(Int, Int)]
     helper [] _ = []
     helper (('[',i):xs) stack = helper xs ((i,-1) : stack)
     helper ((']', j):xs) ((i, -1):stack) = (i, j) : helper xs stack
     helper (_:xs) stack = helper xs stack