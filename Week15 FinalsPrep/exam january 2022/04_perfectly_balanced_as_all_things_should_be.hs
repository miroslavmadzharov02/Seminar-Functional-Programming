main :: IO()
main = do
    print $ isPerfectlyBalanced t1

data BTree a = Nil | Node a (BTree a) (BTree a)

t1 :: BTree Char
t1 = Node 'H' (Node 'a' (Node 'k' Nil Nil) (Node 'e' Nil Nil)) (Node 's' (Node 'l' Nil Nil) (Node 'l' Nil Nil))

isPerfectlyBalanced :: BTree a -> Bool
isPerfectlyBalanced t = 2^height t - 1 == size t

height :: BTree a -> Int
height Nil = 0
height (Node _ l r) = 1 + max (height l) (height r)

size :: BTree a -> Int
size Nil = 0
size (Node _ l r) = 1 + size l + size r