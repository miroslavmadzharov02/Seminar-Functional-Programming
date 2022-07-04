main :: IO()
main = do
    print $ deepestNodesSum odd t1  == 7 
    print $ deepestNodesSum even t2 == 4

deepestNodesSum :: (Int -> Bool) -> BTree -> Int
deepestNodesSum f t = sum [x | x <- getLevel t (height t - 1), f x]

height :: BTree -> Int
height Empty = 0
height (Node _ l r) = 1 + max (height l) (height r)

getLevel :: BTree -> Int -> [Int]
getLevel Empty _ = []
getLevel (Node v _ _ ) 0 = [v]
getLevel (Node v l r) k = getLevel l (k-1) ++ getLevel r (k - 1)

data BTree = Empty | Node Int BTree BTree

t1 :: BTree
t1 = Node 1 (Node 2 (Node 4 (Node 7 Empty Empty) Empty) (Node 5 Empty Empty)) (Node 3 Empty (Node 6 Empty (Node 8 Empty Empty)))

t2 :: BTree
t2 = Node 1 (Node 2 (Node 4 Empty Empty) Empty) (Node 3 Empty Empty)