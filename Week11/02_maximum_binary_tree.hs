data BinaryTree a = Nil | Node a (BinaryTree a) (BinaryTree a)
    deriving (Eq, Show)

constructMaxBtree :: (Ord a) => [a] -> BinaryTree a
constructMaxBtree [] = Nil
constructMaxBtree xs = Node maxNum (constructMaxBtree $ takeWhile (/= maxNum) xs) (constructMaxBtree $ tail $ dropWhile (/= maxNum) xs)
    where
        maxNum = maximum xs