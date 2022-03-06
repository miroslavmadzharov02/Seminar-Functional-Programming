main :: IO()
main = do
    print $ fact 5
    print $ maxNum 3 4

fact :: Int -> Int
fact x
    | x == 0 = 1
    | otherwise = x * fact(x - 1)

maxNum a b
    | a > b = a
    | otherwise = b

--Pattern matching
guessTheNumber 10 = "Correct guess"
guessTheNumber x = "Incorrect guess"

fib 0 = 0
fib 1 = 1
fib x = fib(x-1) + fib(x-2)