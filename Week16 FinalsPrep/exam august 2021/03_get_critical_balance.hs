import Data.List (nub)
main :: IO()
main = do
    print $ getCriticalBalance db fromVarna 10 == [(3,5.0)]  
    print $ getCriticalBalance db (not . fromVarna) 15 == [(2,4.0),(4,12.0)]


getCriticalBalance  ::  ([Account],  [Person])  ->  (Person  -> Bool)  ->  Balance  ->  [(PersonID,  Balance)]
getCriticalBalance (accs, ppl) p s = nub $ [(id, sum (getBalancesById db id)) | (_, aId, bal) <- accs, (id, _, home) <- filter p ppl, aId == id, bal < s]

getBalancesById :: ([Account], [Person]) -> PersonID -> [Balance]
getBalancesById (accs, ps) pId = [b | (_, p, b) <- accs, pId == p]

db = ([(1, 1, 10), (2, 1, 11), (3, 1, 12), (4, 2, 3), (5, 2, 1), (6, 3, 2), (7, 3, 3), (8, 4, 12)], [(1, "Ivan", "Varna"), (2, "Petar", "Burgas"), (3, "Georgi", "Varna"), (4, "Yordan", "Plovdiv")])

fromVarna :: Person -> Bool 
fromVarna (_, _, "Varna") = True 
fromVarna _ = False 

type PersonID = Int 
type Name = String 
type City = String 
type AccountID = Int 
type Balance = Double 
type Person = (PersonID, Name, City) 
type Account = (AccountID, PersonID, Balance)