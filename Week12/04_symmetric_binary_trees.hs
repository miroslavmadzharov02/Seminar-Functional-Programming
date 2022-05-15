data BTree = Empty | Node Int BTree BTree

t3 :: BTree                         --   1
t3 = Node 1 (Node 2 Empty Empty)    --  / \
            (Node 3 Empty Empty)    -- 2   3

t4 :: BTree                                 --     1
t4 = Node 1 (Node 2 (Node 3 Empty Empty)    --    / \
                    Empty)                  --   2   2
            (Node 2 Empty                   --  /     \
                    (Node 3 Empty Empty))   -- 3       3

t5 :: BTree                                         --       1
t5 = Node 1 (Node 2 (Node 3 Empty Empty)            --    /     \
                    (Node 7 (Node 5 Empty Empty)    --   2       2
                            Empty))                 --  / \     / \
            (Node 2 (Node 7 Empty                   -- 3   7   7   3
                            (Node 5 Empty Empty))   --    /     \
                    (Node 3 Empty Empty))           --   5       5

traverseDFS :: BTree -> [Int]
traverseDFS Empty = []
traverseDFS (Node value left right) = traverseDFS left ++ [value] ++ traverseDFS right 

isBTreeSymmetric :: BTree -> Bool
isBTreeSymmetric Empty = True
isBTreeSymmetric (Node value left right) = traverseDFS left == reverse (traverseDFS right)