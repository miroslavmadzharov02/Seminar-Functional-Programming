main :: IO()
main = do
    print $ areCousins t1 2 3 == False
    print $ areCousins t2 8 4 == True

height :: BTree a -> Int
height Nil = 0
height (Node _ l r) = 1 + max (height l) (height r)

getLevel :: BTree a -> Int -> [a]
getLevel Nil _ = []
getLevel (Node v _ _) 0 = [v]
getLevel (Node v l r) k = getLevel l (k-1) ++ getLevel r (k-1)

couples :: [a] -> [(a,a)]
couples xs = [(x1,x2) | (x1,x2) <- zip val1 val2]
    where
        val1 = [x | (x, i) <- zip xs [0..], even i]
        val2 = [x | (x, i) <- zip xs [0..], odd i]

-- getHeightOfValue t2 3 == 1
-- getHeightOfValue t2 7 == 2
getHeightOfValue :: (Eq a) => BTree a -> a -> Int
getHeightOfValue t val = helper 0
    where
        helper i
            | i >= height t = -1
            | elem val (getLevel t i) = i
            | otherwise = helper (i + 1)

areCousins :: (Eq a) => BTree a -> a -> a -> Bool
areCousins t val1 val2
--  if values are not on the same height they cannot be cousins
    | getHeightOfValue t val1 /= getHeightOfValue t val2 = False
--  get all the instances val1 and val2 are siblings (have the same parent)
--  if that is null then val1 and val2 are not siblings -> they are cousins
    | otherwise = null [(x,y) | (x,y) <- couples (getLevel t (getHeightOfValue t val1)), x == val1 || x == val2, y == val1 || y == val2, x /= y]

--  couples (getLevel t2 (getHeightOfValue t2 8)) == [(4,7),(9,8)] -> the above list will be null -> cousins
--  couples (getLevel t1 (getHeightOfValue t1 2)) == [(2,3)] -> the above list gets values -> not null -> not cousins

data BTree a = Nil | Node a (BTree a) (BTree a)

t1 :: BTree Int
t1 = Node 1 (Node 2 Nil Nil)
 (Node 3 Nil Nil)

t2 :: BTree Int
t2 = Node 5 (Node 3 (Node 4 Nil Nil)
 (Node 7 Nil Nil))
 (Node 2 (Node 9 Nil Nil)
 (Node 8 Nil Nil))

 --t2 
 --       5
 --     /   \
 --    3      2
 --   / \    / \
 --  4   7  9   8