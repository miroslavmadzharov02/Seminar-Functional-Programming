type Vector = (Int, Int, Int)

sumTwoVectors :: Vector -> Vector -> Vector
sumTwoVectors (x,y,z) (x1,y1,z1) = (x + x1, y + y1, z + z1)