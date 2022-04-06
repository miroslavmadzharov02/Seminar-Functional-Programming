factorial :: Integer -> Integer
factorial 1 = 1
factorial num = num * factorial (num - 1)

mySin :: Integer -> Double -> Double 
mySin 0 x = x
mySin n x = ((-1)^n * x ^ (2*n+1)) / fromIntegral (factorial (2*n + 1)) + mySin (n - 1) x