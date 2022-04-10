import Data.List (nub)

type Student = String
type Subject = String
type Note = Double
type Record = (Student, Subject, Note)

hardestSubjectFold :: [Record] -> Subject
hardestSubjectFold xs = foldl1 (\ x y -> if getAvgNs x > getAvgNs y then y else x) $ getUniqSubj xs
 where
     getAvgNs s = sum (getNs s) / fromIntegral (length (getNs s))
     getNs s = [ n | (_, c, n) <- xs, c == s] -- filter (\ (_, c, _) -> c == s) xs
     getUniqSubj xs = nub $ map (\ (_, s, _) -> s) xs