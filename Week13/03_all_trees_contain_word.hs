import Data.List (sort, nub, intersect)
main :: IO()
main = do
    print $ allContain [t1, t2] == ["acd","cd","d"]
    print $ null (allContain [t1, t2, t3])
    print $ allContain [t3, t4] == ["g"]


allContain :: [BTree Char] -> [String]
allContain [] = []
allContain [t] = getAllWords t
allContain ts = foldr1 intersect (map getAllWords ts)


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


data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Eq)

t1 :: BTree Char
t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

t2 :: BTree Char
t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

t3 :: BTree Char
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil))

t4 :: BTree Char
t4 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'g' Nil Nil)