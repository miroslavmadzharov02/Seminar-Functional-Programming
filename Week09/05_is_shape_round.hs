main :: IO()
main = do
    print $ isRound (Circle 5) == True
    print $ isRound (Rectangle 2.5 4.5) == False
    print $ isRound (Rectangle 5.5 20.6) == False
    print $ isRound (Triangle 5.3 3.9 4.89) == False
    print $ isRound (Cylinder 20 30) == True

data Shape a = Circle a | Rectangle a a | Triangle a a a | Cylinder a a

isRound :: Shape a -> Bool
isRound (Cylinder _ _) = True
isRound (Circle _) = True
isRound _ = False