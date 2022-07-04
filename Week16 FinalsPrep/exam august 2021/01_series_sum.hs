main :: IO()
main = do
    print $ seriesSum 1 3 == 20.0    
    print $ seriesSum 2 4 == 64.0 

seriesSum :: Double -> Int -> Double
seriesSum x n = sum [s | i <- [1..n], s <- [x^i + fromIntegral (i^2) + 1]]