reverseNum :: Int -> Int 
reverseNum num = helper num 0
    where
    helper :: Int -> Int -> Int
    helper 0 result = result
    helper num result = helper (div num 10) (mod num 10 + result * 10)

isPalindrome :: Int -> Bool 
isPalindrome num = num == reverseNum num