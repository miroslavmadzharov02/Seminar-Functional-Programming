{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use id" #-}
main :: IO()
main = do
    print $ intersectionPoints (\x -> x) (\x -> x * x) (-5) 5 == [0, 1]
    print $ null (intersectionPoints (\x -> x) (\x -> x * x + 1) (-5) 5)


intersectionPoints :: (Int -> Int) -> (Int -> Int) -> Int -> Int -> [Int]
intersectionPoints f g x y = [p1 | (p1,p2) <- zip [f p1 | p1 <- [min x y..max x y]] [g p2 | p2 <- [min x y..max x y]], p1 == p2]