type Vector = (Int, Int, Int)

scaleVector :: Vector -> Int -> Vector
scaleVector (x,y,z) scale = (x * scale, y * scale, z * scale)