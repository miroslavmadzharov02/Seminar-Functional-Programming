sumTupleNonPM :: (Int, Int) -> Int 
sumTupleNonPM tup = fst tup + snd tup 
--fst and snd used to get tuple values

sumTuplePM :: (Int, Int) -> Int
sumTuplePM (x,y) = x + y

sumTupleLambda :: (Integer, Integer) -> Integer
sumTupleLambda = (\ (x,y) -> x + y)