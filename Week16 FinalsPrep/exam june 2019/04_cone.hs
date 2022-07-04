main :: IO()
main = do
    print $ levelSum numberBTree 1 == 11 -- (5 + 6)
    print $ cone numberBTree

levelSum :: (Num a) => BTree a -> Int -> a
levelSum Nil _ = 0
levelSum (Node v _ _) 0 = v
levelSum (Node v l r) k = levelSum l (k - 1) + levelSum r (k - 1)

cone :: (Num a, Ord a) => BTree a -> Bool
cone Nil = True
cone (Node v Nil Nil) = True
cone t@(Node v l r) = levelSum t 0 < levelSum t 1 && cone l && cone r

data BTree a = Nil | Node a (BTree a) (BTree a)

numberBTree :: BTree Int
numberBTree = Node 10 (Node 5 (Node 1 Nil Nil) (Node 9 Nil Nil)) (Node 6 (Node 8 Nil Nil) (Node 7 Nil Nil))