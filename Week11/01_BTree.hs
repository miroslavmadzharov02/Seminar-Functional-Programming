data BinaryTree a = Nil | Node a (BinaryTree a) (BinaryTree a)
    deriving (Eq, Show)

numberBTree :: BinaryTree Int
numberBTree = Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 4 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))

charBTree :: BinaryTree Char
charBTree = Node 'k' (Node 'a' (Node 'h' Nil Nil) (Node 's' Nil Nil)) (Node 'l' (Node 'e' Nil Nil) (Node 'l' Nil Nil))

size :: BinaryTree a -> Int
size Nil = 0
size (Node _ left right) = 1 + size left + size right

sumTree :: (Num a) => BinaryTree a -> a
sumTree Nil = 0
sumTree (Node value left right) = value + sumTree left + sumTree right

traverseTreeDFS :: BinaryTree a -> [a]
traverseTreeDFS Nil = []
traverseTreeDFS (Node value left right) = traverseTreeDFS left ++ [value] ++ traverseTreeDFS right

getLevel :: BinaryTree a -> Int -> [a]
getLevel Nil _ = []
getLevel (Node value left right) 0 = [value]
getLevel (Node value left right) k = getLevel left (k - 1) ++ getLevel right (k - 1)

traverseTreeBFS :: (Eq a) => BinaryTree a -> [a]
traverseTreeBFS t = concat $ takeWhile (/= []) $ map (getLevel t) [0 .. ]

mapTree :: BinaryTree a -> (a -> b) -> BinaryTree b
mapTree Nil _ = Nil
mapTree (Node value left right) f = Node (f value) (mapTree left f) (mapTree right f)