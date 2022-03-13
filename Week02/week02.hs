factorialIter :: (Eq t, Num t) => t -> t
factorialIter x = factorialHelper x 1
    where
        factorialHelper 1 a = a
        factorialHelper n a = factorialHelper (n-1) (n*a)

reverseIter :: Integral t => t -> t
reverseIter x = reverseHelper x 0
    where
        reverseHelper 0 b = b
        reverseHelper a b = reverseHelper (div a 10) (b*10 + mod a 10)

palindromeCheck :: Integral t => t -> Bool
palindromeCheck x = x == reverseIter x

sumOfDigits :: Integral p => p -> p
sumOfDigits 0 = 0
sumOfDigits x = mod x 10 + sumOfDigits(div x 10)

primeCheck :: Integral a => a -> Bool
primeCheck 1 = False
primeCheck 2 = True 
primeCheck x = primeCheckHelper x 2 (x - 1)
    where
    primeCheckHelper x start end
        | start == end = True
        | mod x start == 0 = False
        | otherwise = primeCheckHelper x (start + 1) end


 
    

        
        