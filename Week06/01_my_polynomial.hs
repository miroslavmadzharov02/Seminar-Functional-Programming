myPolynomial :: (Enum a, Num a, Num t) => (t -> a) -> [t] -> t -> a
myPolynomial f ys = (\ x -> sum [ n * f (y * x) | (y, n) <- zip ys [1..]])
