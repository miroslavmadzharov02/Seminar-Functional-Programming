import Data.List (isInfixOf)

isPrime :: Int -> Bool
isPrime num = num > 1 && all (\x -> mod num x /= 0) [2..floor $ sqrt $ fromIntegral num]

traverseBFS :: BTree  -> [[Char]]
traverseBFS t = takeWhile (/= []) $ map (getLevel t) [0 .. ]

getLevel ::BTree -> Int -> [Char]
getLevel Nil _ = []
getLevel (Node value left right) 0 = [value]
getLevel (Node value left right) k = getLevel left (k - 1) ++ getLevel right (k - 1)

height :: BTree -> Int
height Nil = 0
height (Node _ left right) = 1 + max (height left) (height right)

isPrimeDictionary :: BTree -> Vocabulary -> Bool
isPrimeDictionary t ws = isPrime $ sum [ k + length w | k <- [0 .. height t - 1], w <- ws, w `isInfixOf` getLevel t k]

type Vocabulary = [String]

data BTree = Nil | Node Char BTree BTree
    deriving (Show)

vocabulary :: Vocabulary
vocabulary = ["the", "a", "Some", "swimming", "liStS", "lisp"]

t1 :: BTree
t1 = Node 'a' (Node 't' (Node 'l' (Node 't' Nil Nil) (Node 'h' Nil Nil)) (Node 'i' (Node 'e' Nil Nil) (Node 'l' Nil Nil))) (Node 'h' (Node 's' (Node 'i' Nil Nil) (Node 'S' Nil Nil)) (Node 'a' (Node 't' Nil Nil) (Node 'S' Nil Nil)))

t2 :: BTree
t2 = Node 'a' (Node 't' (Node 'l' (Node 't' Nil Nil) (Node 'h' Nil Nil)) (Node 'i' (Node 'e' Nil Nil) (Node 'l' Nil Nil))) (Node 'h' (Node 's' (Node 'i' Nil Nil) (Node 's' Nil Nil)) (Node 'p' (Node 'p' Nil Nil) (Node 'S' Nil Nil)))

t3 :: BTree
t3 = Node 'a' (Node 't' (Node 'l' Nil Nil) (Node 'i' Nil Nil)) (Node 'h' (Node 's' Nil Nil) (Node 'p' Nil Nil))