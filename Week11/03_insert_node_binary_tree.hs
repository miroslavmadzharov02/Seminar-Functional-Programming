data BinaryTree a = Nil | Node a (BinaryTree a) (BinaryTree a)
 deriving (Eq, Show)

numberTreeBefore :: BinaryTree Int
numberTreeBefore = Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 Nil (Node 18 Nil Nil))

insert :: (Ord a) => BinaryTree a -> a -> BinaryTree a
insert Nil k = Node k Nil Nil
insert (Node value left right) k
    | k > value = Node value left (insert right k)
    | otherwise = Node value (insert left k) right