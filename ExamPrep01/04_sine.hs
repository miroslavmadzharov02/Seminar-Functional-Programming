mySin :: Integer -> Double -> Double
mySin 0 x = x
mySin i x = ((-1)^i * x^(2*i + 1)) / (fromIntegral $ product [1 .. 2*i + 1]) + mySin (i - 1) x