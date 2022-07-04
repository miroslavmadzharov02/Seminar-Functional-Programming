main :: IO()
main = do
    print $ cook [ApplePie, ApplePie, Burger, Chicken, Chicken, ApplePie]  == [Sunny, Rainy, Rainy, Sunny, Rainy]
    print $ cook [ApplePie, Burger, Chicken, Chicken, ApplePie, Burger] == [Rainy,Rainy,Sunny,Rainy,Rainy]

data Food = ApplePie | Burger | Chicken
    deriving (Show, Eq)
data Weather = Sunny | Rainy
    deriving (Show, Eq)

cook :: [Food] -> [Weather]
cook [] = []
cook [_] = []
cook (f1:f2:xs)
    | f1 == f2 = Sunny : cook (f2:xs)
    | otherwise = Rainy : cook (f2:xs)