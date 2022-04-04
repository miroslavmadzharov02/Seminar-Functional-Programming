hasIncDigits :: Int -> Bool 
hasIncDigits num = num < 10 || mod num 10 >= mod (div num 10) 10 && hasIncDigits (div num 10)