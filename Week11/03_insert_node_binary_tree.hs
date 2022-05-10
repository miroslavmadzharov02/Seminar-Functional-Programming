data BinaryTree a = Nil | Node a (BinaryTree a) (BinaryTree a)
 deriving (Eq, Show)

numberTreeBefore :: BinaryTree Int
numberTreeBefore = Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 Nil (Node 18 Nil Nil))