upperBound :: (Ord a) => (a -> a) -> a -> (a -> a)
upperBound f y = (\ x -> max (f x) y)