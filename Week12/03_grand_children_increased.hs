data BTree = Empty | Node Int BTree BTree

t1 :: BTree
t1 = Node 8 (Node 3 (Node 1 Empty Empty) (Node 4 Empty Empty)) (Node 10 (Node 9 Empty Empty) (Node 14 Empty Empty))

t2 :: BTree
t2 = Node 8 (Node 3 (Node 9 Empty Empty) (Node 10 Empty Empty)) (Node 10 (Node 11 Empty Empty) (Node 14 Empty Empty))

getLevel :: BTree -> Int -> [Int]
getLevel Empty _ = []
getLevel (Node value _ _) 0 = [value]
getLevel (Node _ left right) k = getLevel left (k - 1) ++ getLevel right (k - 1)

grandchildrenIncreased :: BTree -> Bool
grandchildrenIncreased Empty = True
grandchildrenIncreased (Node value left right) = null cs || minimum cs > value && grandchildrenIncreased left && grandchildrenIncreased right
    where cs = getLevel (Node value left right) 2