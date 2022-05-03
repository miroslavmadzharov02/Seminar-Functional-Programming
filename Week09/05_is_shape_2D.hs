main :: IO()
main = do
    print $ is2D (Circle 5) == True
    print $ is2D (Rectangle 2.5 4.5) == True
    print $ is2D (Rectangle 5.5 20.6) == True
    print $ is2D (Triangle 5.3 3.9 4.89) == True
    print $ is2D (Cylinder 20 30) == False

data Shape a = Circle a | Rectangle a a | Triangle a a a | Cylinder a a

is2D :: Shape a -> Bool
is2D (Cylinder _ _) = False
is2D _ = True