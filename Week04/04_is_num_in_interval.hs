isInside :: Int -> Int -> Int -> Bool 
isInside leftBorder rightBorder numToSeek = elem numToSeek [leftBorder..rightBorder]