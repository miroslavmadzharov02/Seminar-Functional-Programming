{-divideNonPM :: (Int, Int) -> (Int, Int)
divideNonPM tup = (div (fst tup) (snd tup), mod (fst tup) (snd tup))

dividePM :: (Int, Int) -> (Int, Int)
dividePM (x,y) = (div x y, mod x y)

divideTupleLambda :: (Integer, Integer) -> (Integer, Integer)
divideTupleLambda = (\ (x,y) -> (div x y, mod x y))-}

type Point = (Int, Int)

divideNonPM :: Point -> Point
divideNonPM tup = (div (fst tup) (snd tup), mod (fst tup) (snd tup))

dividePM :: Point -> Point
dividePM (x,y) = (div x y, mod x y)

divideTupleLambda :: Point -> Point
divideTupleLambda = (\ (x,y) -> (div x y, mod x y))