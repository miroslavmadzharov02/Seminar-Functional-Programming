

getLevel :: BTree -> Int -> [Int]
getLevel Nil _ = []
getLevel (Node v Nil Nil) 0 = [v]
getLevel (Node v l r) k = getLevel l (k - 1) ++ getLevel r (k - 1)

height :: BTree -> Int
height Nil = 0
height (Node _ l r) = 1 + max (height l) (height r)

data BTree = Nil | Node Int BTree BTree

tree :: BTree
tree = Node 1 (Node 2 (Node 4 (Node 8 Nil Nil) (Node 9 Nil Nil)) (Node 5 Nil (Node 10 Nil Nil))) (Node 3 (Node 6 Nil (Node 11 Nil Nil)) (Node 7 Nil (Node 12 Nil Nil)))