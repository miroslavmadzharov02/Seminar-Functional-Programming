import Data.List(sort)
data BinaryTree a = Nil | Node a (BinaryTree a) (BinaryTree a)
 deriving (Eq, Show)

traverseDFS :: BinaryTree a -> [a]
traverseDFS Nil = []
traverseDFS (Node value left right) = traverseDFS left ++ [value] ++ traverseDFS right

isBinarySearchTree :: (Eq a, Ord a) => BinaryTree a -> Bool
isBinarySearchTree t = traverseDFS t == sort (traverseDFS t)