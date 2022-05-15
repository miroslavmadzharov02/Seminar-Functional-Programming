# Task 1

Define a recursive **polymorphic** algebraic type called *BTree*. Create the following instances and print them:

*numberBTree*:

![Alt text](https://raw.githubusercontent.com/SimeonHristov99/FP_IS_Summer_21-22/main/Week_11%20-%20Trees%20(part%201)/assets/task1_1.png)

*charBTree*:

![Alt text](https://github.com/SimeonHristov99/FP_IS_Summer_21-22/raw/main/Week_11%20-%20Trees%20(part%201)/assets/task1_2.png?raw=true)

Define the following functions:

    ​​size - returns the number of nodes;
    sumTree - returns the sum of the nodes (should work only for trees that store numbers in their nodes);​
    traverseDFS​ - prints the nodes using DFS;
    getLevel - accepts a whole number k and returns the nodes at level k (root is at level 0);
    traverseBFS - prints the nodes using BFS;
    mapTree - maps an unary function to the tree.

Test cases:

    print $ numberBTree
    print $ charBTree

    print $ size numberBTree == 9
    print $ size charBTree == 7

    print $ sumTree numberBTree == 146
    -- print $ sumTree charBTree -- should not work

    print $ traverseDFS numberBTree == [96, 1, 12, 0, 5, 2, 4, 5, 21]
    print $ traverseDFS charBTree == "haskell"

    print $ getLevel numberBTree 2 == [1, 0, 2, 5]
    print $ getLevel charBTree 1 == "al"
    print $ getLevel charBTree 3 == []

    print $ traverseBFS numberBTree == [5,12,4,1,0,2,5,96,21]
    print $ traverseBFS charBTree == "kalhsel"

    print $ mapTree numberBTree (*2) == Node 10 (Node 24 (Node 2 (Node 192 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 8 (Node 4 Nil Nil) (Node 10 Nil (Node 42 Nil Nil)))
    print $ mapTree numberBTree (show) == Node "5" (Node "12" (Node "1" (Node "96" Nil Nil) Nil) (Node "0" Nil Nil)) (Node "4" (Node "2" Nil Nil) (Node "5" Nil (Node "21" Nil Nil)))
    print $ mapTree charBTree (toUpper) == Node 'K' (Node 'A' (Node 'H' Nil Nil) (Node 'S' Nil Nil)) (Node 'L' (Node 'E' Nil Nil) (Node 'L' Nil Nil))

# Task 2

Given a list of whole numbers with no duplicates construct a *maximum binary tree*. We say that a binary tree is a *maximum binary tree* if:

- The root is the maximum number in the list.
- The left subtree is the maximum tree constructed from the elements on the left of the of the maximum number.
- The right subtree is the maximum tree constructed from the elements on the right of the maximum number.

Test case:

    print $ constructMaxBTree [3, 2, 1, 6, 0, 5] == t

    t:
           6
        /     \
       3       5
       \       /
        2    0
         \
          1

# Task 3

Define `numberTreeBefore` using a constructor.

Define a function that inserts a node in a binary search tree. By using it construct the same tree and check their equality.

Define `numberTreeBefore` (name the new tree `numberTreeAfter`) and `secondNumberTree` using insert.

`numberTreeBefore`:

![Alt text](https://github.com/SimeonHristov99/FP_IS_Summer_21-22/raw/main/Week_11%20-%20Trees%20(part%201)/assets/task3_1.png?raw=true)

`secondNumberTree`:

![Alt text](https://github.com/SimeonHristov99/FP_IS_Summer_21-22/raw/main/Week_11%20-%20Trees%20(part%201)/assets/task3_2.png?raw=true)

Test cases:

    print $ insert (Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 Nil (Node 18 Nil Nil))) 13 == (Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil)))
    
    print $ (numberTreeAfter == numberTreeBefore) == True
    
    print $ secondNumberTree == Node 10 (Node 5 (Node 3 (Node 1 Nil Nil) Nil) (Node 7 (Node 6 Nil Nil) Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil))

# Task 4

Define a predicate that checks whether a **whole number** binary tree is a binary search tree.

Test cases:

    print $ isBinarySearchTree t3 == True
    print $ isBinarySearchTree t4 == False
    print $ isBinarySearchTree t5 == False
    print $ isBinarySearchTree t6 == False

Trees used:

    t3 :: BTree
    t3 = Node 8 (Node 3 (Node 1 Nil Nil) (Node 6 (Node 4 Nil Nil) (Node 7 Nil Nil))) (Node 10 Nil (Node 14 (Node 13 Nil Nil) Nil))
    
    t4 :: BTree
    t4 = Node 8 (Node 3 (Node 5 Nil Nil) (Node 6 Nil Nil)) (Node 10 Nil (Node 14 Nil Nil))
    
    t5 :: BTree
    t5 = Node 8 (Node 3 (Node 2 Nil Nil) (Node 6 Nil Nil)) (Node 10 Nil (Node 1 Nil Nil))
    
    t6 :: BTree
    t6 = Node 8 (Node 3 (Node 1 Nil Nil) (Node 4 Nil Nil)) (Node 10 (Node 5 Nil Nil) Nil)