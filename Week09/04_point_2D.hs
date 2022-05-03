data Point2D a = Point2D a a
 deriving (Show, Eq)

myImages :: (Eq a) => (a -> a) -> (a -> a) -> [Point2D a] -> [Point2D a]
myImages f g = filter (\ (Point2D x y) -> f x == g y)