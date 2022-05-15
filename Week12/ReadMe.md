# Task 1

Define the following tree by using a polymorphic algebraic type and complete the steps below:

![Alt text](https://raw.githubusercontent.com/SimeonHristov99/FP_IS_Summer_21-22/main/Week_12%20-%20Trees%20(part%202)/assets/task3.png)

```text
1. print it;
2. define a function that:
    - returns its size;
    - returns the elements at level k.
```

Test cases:

```haskell
print $ t
print $ size t == 13
print $ getLevel t 2 == [5, 8, 9, 11, 13, 6, 4]
```

# Task 2

![tree_task3](https://github.com/SimeonHristov99/FP_IS_Summer_21-22/raw/main/Week_12%20-%20Trees%20(part%202)/assets/tree.png?raw=true)

Test case:

```haskell
print $ numOfNodes t == 2 -- 8 and 12
```

`t`:
```haskell
t = Node 10 [Node 3 [Node 5 [Nil], Node 8 [Node 1 [Nil], Node 2 [Nil]], Node 9 [Nil]], Node 7 [Node 11 [Nil], Node 13 [Nil]], Node 12 [Node 6 [Nil], Node 4 [Nil]]]
```

# Task 3

![tree_task3](https://github.com/SimeonHristov99/FP_IS_Summer_21-22/raw/main/Week_12%20-%20Trees%20(part%202)/assets/t4.png?raw=true)

`t1`:

         8
       /  \
      3    10
     / \   /  \
    1   4 9   14

`t2`:

         8
       /    \
      3      10
     / \     /  \
    9   10  11   14

Test cases:

```haskell
print $ grandchildrenIncreased t1 == False
print $ grandchildrenIncreased t2 == True
```

Trees used:

```haskell
t1 = Node 8 (Node 3 (Node 1 Empty Empty) (Node 4 Empty Empty)) (Node 10 (Node 9 Empty Empty) (Node 14 Empty Empty))

t2 = Node 8 (Node 3 (Node 9 Empty Empty) (Node 10 Empty Empty)) (Node 10 (Node 11 Empty Empty) (Node 14 Empty Empty))
```

# Task 4

![tree_task3](https://github.com/SimeonHristov99/FP_IS_Summer_21-22/raw/main/Week_12%20-%20Trees%20(part%202)/assets/t5.png?raw=true)

Test cases:

```haskell
print $ isSymmetric Empty == True
print $ isSymmetric t3 == False
print $ isSymmetric t4 == True
print $ isSymmetric t5 == True
```

Trees used:

```haskell
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
```

# Task 5

![tree_task3](https://github.com/SimeonHristov99/FP_IS_Summer_21-22/raw/main/Week_12%20-%20Trees%20(part%202)/assets/t6.png?raw=true)

Test cases:

```haskell
print $ flatten (List []) == []
print $ flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) == [1,2,3,4,5]
print $ flatten (Elem 1) == [1]
```