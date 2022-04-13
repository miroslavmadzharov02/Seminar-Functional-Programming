isArithmetic :: (Eq a, Enum a) => [a] -> Bool
isArithmetic xs = length xs < 2 || xs == take (length xs) [xs!!0, xs!!1 ..]

onlyArithmetic :: (Eq a, Enum a) => [[a]] -> [[a]]
onlyArithmetic xss = [ xs | xs <- xss, isArithmetic xs]