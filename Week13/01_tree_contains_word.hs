import Data.List (sort, nub)
main :: IO()
main = do
    print $ containsWord t1 "acd"
    print $ containsWord t1 "cd"
    print $ not (containsWord t1 "af")
    print $ not (containsWord t1 "ac")
    print $ not (containsWord t1 "acdh")
    print $ not (containsWord t1 "b")
    print $ containsWord t1 "e"
    print $ containsWord t2 "ab"
    print $ not (containsWord t2 "ad")
    print $ containsWord t3 "bdh"
    print $ containsWord t3 "bdi"
    print $ not (containsWord t3 "ac")

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Eq)

containsWord :: BTree Char -> String -> Bool
containsWord _ [] = False
containsWord Nil _ = False
containsWord (Node c l r) [x] = c == x
containsWord t@(Node c l r) word@(x:xs) = word `elem` getAllWords t

getAllWords :: BTree Char -> [String]
getAllWords Nil = []
getAllWords t@(Node c l r) = sort $ nub $ getWordsFromRoot t ++ getWordsFromRoot l ++ getWordsFromRoot r ++ getAllWords l ++ getAllWords r

getWordsFromRoot :: BTree Char -> [String]
getWordsFromRoot t = helper t []
    where
        helper :: BTree Char -> [String] -> [String]
        helper Nil str = str
        helper (Node c l Nil) str = helper l [concat (str ++ [[c]])]
        helper (Node c Nil r) str = helper r [concat (str ++ [[c]])]
        helper (Node c l r) str = helper l [concat (str ++ [[c]])] ++ helper r [concat (str ++ [[c]])]

t1 :: BTree Char
t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

t2 :: BTree Char
t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

t3 :: BTree Char
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil))