unaryLambda :: (a -> a) -> (a -> a)
unaryLambda f = f -- == (\x -> f x)

