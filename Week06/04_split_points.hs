import Data.List ( partition )

type Point = (Double, Double)

splitPoints :: Point -> Double -> [Point] -> ([Point], [Point])
splitPoints (x, y) r ps
 | r <= 0 = error "r has to be natural"
 | otherwise = partition (\ (x1, y1) -> (x1 - x)**2 + (y1 - y)**2 <= r**2) ps