type Node = Int
type Graph =[(Node, [Node])]

member :: Node -> Node -> Graph -> Bool
member f c g = not $ null [ cs | (n, cs) <- g, n == f, elem c cs ]

isPath :: Graph -> [Node] -> Bool
isPath g ns = all (\ (f, c) -> member f c g) $ zip ns (tail ns)