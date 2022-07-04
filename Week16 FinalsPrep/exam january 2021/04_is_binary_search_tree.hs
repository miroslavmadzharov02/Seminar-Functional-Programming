import Data.List (sort)

main :: IO()
main = do
    print $ isBinarySearchTree t1
    print $ not (isBinarySearchTree t2)
    print $ not (isBinarySearchTree t3)

isBinarySearchTree :: BTree -> Bool
isBinarySearchTree t = sort (traverseDFS t) == traverseDFS t

traverseDFS :: BTree -> [Int]
traverseDFS Empty = []
traverseDFS (Node v l r) = traverseDFS l ++ [v] ++ traverseDFS r

data BTree = Empty | Node Int BTree BTree

t1 :: BTree                                 --      8 
t1 = Node 8 (Node 3 (Node 1 Empty Empty)    --    /   \ 
                    (Node 4 Empty Empty))   --   3     10 
            (Node 10 (Node 9 Empty Empty)   --  / \    / \ 
                     (Node 14 Empty Empty)) -- 1   4  9   14 

t2 :: BTree                                 --      8 
t2 = Node 8 (Node 3 (Node 1 Empty Empty)    --    /   \ 
                    (Node 4 Empty Empty))   --   3     10 
            (Node 10 (Node 5 Empty Empty)   --  / \    / \ 
                     (Node 14 Empty Empty)) -- 1   4  5   14 

t3 :: BTree                                 --      8 
t3 = Node 8 (Node 3 (Node 5 Empty Empty)    --    /   \ 
                    (Node 6 Empty Empty))   --   3     10 
            (Node 10 (Node 9 Empty Empty)   --  / \    / \ 
                     (Node 14 Empty Empty)) -- 5   6  9   14 