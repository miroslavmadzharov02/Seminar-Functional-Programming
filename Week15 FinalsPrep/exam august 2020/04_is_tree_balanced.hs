main :: IO()
main = do
    print $ not (isBalanced t1)
    print $ isBalanced t2

isBalanced :: BTree -> Bool
isBalanced Empty = True
isBalanced (Node _ l r)
    | abs (height l - height r) <= 1 = isBalanced l && isBalanced r
    | otherwise = False

height :: BTree -> Int
height Empty = 0
height (Node _ l r) = 1 + max (height l) (height r)

data BTree = Empty | Node Int BTree BTree

t1 :: BTree
t1 = Node 5 Empty (Node 4 (Node 5 Empty Empty) (Node 7 Empty Empty))

t2 :: BTree
t2 = Node 5 (Node 3 Empty Empty) (Node 4 (Node 5 Empty Empty) (Node 7 Empty Empty))
                                            