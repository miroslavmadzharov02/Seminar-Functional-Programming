import Data.List (sort, nub)
main :: IO()
main = do
    print $ getAllWords t1 == ["abe","acd","acf","be","cd","cf","d","e","f"]
    print $ getAllWords t2 == ["ab","acd","b","cd","d"]
    print $ getAllWords t3 == ["abdh","abdi","abe","acf","acg","bdh","bdi","be","cf","cg","dh","di","e","f","g","h","i"]

data BTree a = Nil | Node a (BTree a) (BTree a)
 deriving (Eq)

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