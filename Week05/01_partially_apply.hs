partiallyApply :: (a -> a -> a) -> a -> (a -> a)
partiallyApply f x = f x -- == (\ y -> f x y)
--(partiallyApply (\x y -> 10 * x + y) 5) 10 == 60