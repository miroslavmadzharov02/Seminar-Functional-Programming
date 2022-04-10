difference :: (Num a) => (a -> a) -> (a -> a -> a)
difference f = (\x y -> f x - f y)