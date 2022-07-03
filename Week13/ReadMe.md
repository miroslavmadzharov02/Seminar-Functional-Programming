# Task 1

Define a function that checks whether a word is present in a binary tree made up of characters.

Test cases:

```haskell
print $ containsWord t1 "acd" == True
print $ containsWord t1 "cd" == True
print $ containsWord t1 "af" == False
print $ containsWord t1 "ac" == False
print $ containsWord t1 "acdh" == False
print $ containsWord t1 "b" == False
print $ containsWord t1 "e" == True
print $ containsWord t2 "ab" == True
print $ containsWord t2 "ad" == False
print $ containsWord t3 "bdh" == True
print $ containsWord t3 "bdi" == True
print $ containsWord t3 "ac" == False
```

Trees:

```haskell
t1:      a
        / \
       c   b
      / \   \
     f   d   e

t1 :: BTree Char
t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

t2 :: BTree Char
t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

t3 :: BTree Char
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil)) 
```

# Task 2

Define a function that returns all possible word combinations from a binary tree made up of characters.

Trees:

```haskell
t1:    a
      / \
     c   b
    / \   \
   f   d   e

t1 :: BTree Char
t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

t2 :: BTree Char
t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

t3 :: BTree Char
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil)) 
```

Test case:

```haskell
print $ genWords t1 == ["abe","acd","acf","be","cd","cf","d","e","f"]
print $ genWords t2 == ["ab","acd","b","cd","d"]
print $ genWords t3 == ["abdh","abdi","abe","acf","acg","bdh","bdi","be","cf","cg","dh","di","e","f","g","h","i"]
```

# Task 3

Define a function that returns all words contained in all of the trees passed as a list.

> **Implementation detail**: Use folding.

Test cases:

```haskell
print $ allContain [t1, t2] == ["acd","cd","d"]
print $ allContain [t1, t2, t3] == []
print $ allContain [t3, t4] == ["g"]
```

Trees:

```haskell
t1:    a
      / \
     c   b
    / \   \
   f   d   e

t1 :: BTree Char
t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

t2 :: BTree Char
t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

t3 :: BTree Char
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil)) 

t4 :: BTree Char
t4 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'g' Nil Nil)
```
