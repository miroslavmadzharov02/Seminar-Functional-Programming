import Data.List
type Node = Int
type Edge = (Node, Node)
type Graph = [Edge]

nodes :: Graph -> [Node]
nodes graph = sort $ nub $ fst vector ++ snd vector 
    where
        vector = unzip graph

neighbours :: Node -> Graph -> [Node]
neighbours node graph = [x2 | (x1,x2) <- graph, x1 == node]

adjacencyList :: Graph -> [(Node, [Node])]
adjacencyList graph = [ (x, neighbours x graph) | x <- nodes graph ]