specialSum :: Int -> Int -> Int
specialSum leftBorder rightBorder = sum [x | x <- [leftBorder..rightBorder], mod (x-1) 4 == 0 && elem '6' (show x)]