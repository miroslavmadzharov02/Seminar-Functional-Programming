main :: IO()
main = do
    print $ deepestLeavesSum t3 == 15
    print $ deepestLeavesSum t4 == 4

data BTree = Empty | Node Int BTree BTree

deepestLeavesSum :: BTree -> Int
deepestLeavesSum t = sum $ getLevel t (height t - 1)

getLevel :: BTree -> Int -> [Int]
getLevel Empty _ = []
getLevel (Node v l r) 0 = [v]
getLevel (Node v l r) k = getLevel l (k - 1) ++ getLevel r (k - 1)

height :: BTree -> Int
height Empty = 0
height (Node _ Empty Empty) = 1
height (Node _ l r) = 1 + max (height l) (height r)

t3 :: BTree
t3 = Node 1 (Node 2 (Node 4 (Node 7 Empty Empty) Empty) (Node 5 Empty Empty)) (Node 3 Empty (Node 6 Empty (Node 8 Empty Empty)))

t4 :: BTree
t4 = Node 1 (Node 2 (Node 4 Empty Empty) Empty) (Node 3 Empty Empty)