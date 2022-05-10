import Data.List(nub)
main :: IO()
main = do
    --test cases for task 1
    print $ sunkK 0 database == [("Germany",0),("Gt.Britain",0)]
    print $ sunkK 2 database == [("Germany",0),("Japan",2),("Gt.Britain",0)]
    print $ sunkK 9 database == [("Germany",0),("USA",4),("Japan",2),("Gt.Britain",0)]
    print $ sunkK 20 database == [("Germany",0),("USA",4),("Japan",2),("Gt.Britain",0)]

   --test cases for task 2
    print $ actorsNetworthHigherThan 124000000 db == [([["Billy Bob Thornton","Scarlett Johansson"],["Kim Basinger","Alec Baldwin","Harrison Ford"],["Harrison Ford"]],["The Man Who Wasn't There","Star Wars","Empire Strikes Back"],"George Lucas",200000000),([["Liv Tyler"]],["Logan's run"],"Ted Turner",125000000)]
    print $ actorsNetworthHigherThan 125000000 db == [([["Billy Bob Thornton","Scarlett Johansson"],["Kim Basinger","Alec Baldwin","Harrison Ford"],["Harrison Ford"]],["The Man Who Wasn't There","Star Wars","Empire Strikes Back"],"George Lucas",200000000)]

--TASK 1 SOLUTION STARTS HERE
sunkK :: Int -> Database -> [(Name, Int)]
sunkK k (os, bs, ss, sc) = [(country, length (getSunkShipsByCountry country)) | country <- allCountryNames, k >= length (getSunkShipsByCountry country)]
    where
        allCountryNames :: [Name]
        allCountryNames = nub $ [names | (_, _, names) <- sc]

        getShipCountry :: Name -> [Name]
        getShipCountry shipName = [country | (ship, className, _) <- ss, (classN, _, country) <- sc, ship == shipName && classN == className]

        getSunkShipsByCountry :: Name -> [Name]
        getSunkShipsByCountry countryName = [ship | (ship, _, result) <- os, head (getShipCountry ship) == countryName && result == "sunk" ]
--TASK 1 SOLUTION ENDS HERE

--TASK 2 SOLUTION STARTS HERE
actorsNetworthHigherThan :: Integer -> MovieDB -> [([[Name]], [Title], Name, Integer)]
actorsNetworthHigherThan nw (ms, ss, si, sd, me) = helper getExecIdHigherNetWorth
    where
        -- helper takes a list of producer IDs and returns a list of the needed info for each producer
        helper :: [ProducerID] -> [([[Name]], [Title], Name, Integer)]
        helper [] = []
        helper (x:xs) = (getAllActors (getExecMovies x), getExecMovies x, getExecById x, getExecNetworthById x) : helper xs

        -- list of producer IDs that have higher networth than inputted amount
        -- (nw == 124 000 000) getExecIdHigherNetWorth == [555,333]
        getExecIdHigherNetWorth :: [ProducerID]
        getExecIdHigherNetWorth = [id | (_, id, networth) <- me, networth > nw]

        getExecMovies :: ProducerID -> [Title]
        getExecMovies execId = [title | (title, _, _, _, id) <- ms, id == execId]

        getActorsInMovie :: Title -> [Name]
        getActorsInMovie title = [name | (name, movieTitle) <- si, movieTitle == title]

        getAllActors :: [Title] -> [[Name]]
        getAllActors [] = []
        getAllActors (x:xs) = getActorsInMovie x : getAllActors xs

        getExecById :: ProducerID -> Name
        getExecById execId = head [name | (name, id, _) <- me, id == execId]

        getExecNetworthById :: ProducerID -> Networth
        getExecNetworthById execId = head [networth | (_, id, networth) <- me, id == execId]
--TASK 2 SOLUTION ENDS HERE

--TASK 1 DUMMY VALUES START HERE
type Name = String
type Date = String
type Class = String
type Type = String
type Result = String
type Launched = Int
type Battle = (Name, Date)
type Ship = (Name, Class, Launched)
type Outcome = (Name, Name, Result)
type ShipClass = (Name, Type, Name)
type Database = ([Outcome], [Battle], [Ship], [ShipClass])

outcomes :: [Outcome]
outcomes = [
    ("Bismarck", "North Atlantic", "sunk"),
    ("California", "Surigao Strait", "ok"),
    ("Duke of York","North Cape", "ok"),
    ("Fuso", "Surigao Strait", "sunk"),
    ("Hood", "North Atlantic", "sunk"),
    ("King George V", "NorthAtlantic", "ok"),
    ("Kirishima", "Guadalcanal", "sunk"),
    ("Prince of Wales", "North Atlantic", "damaged"),
    ("Rodney","North Atlantic", "ok"),
    ("Schamhorst", "North Cape","sunk"),
    ("South Dakota", "Guadalcanal", "damaged"),
    ("Tennessee", "Surigao Strait", "ok"),
    ("Washington","Guadalcanal", "ok"),
    ("Prince of Wales", "Guadalcanal","ok"),
    ("West Virginia", "Surigao Strait", "ok"),
    ("Yamashiro", "Surigao Strait", "sunk"),
    ("California","Guadalcanal", "damaged") ]

battles :: [Battle]
battles = [
    ("Guadalcanal", "1942-11-15"),
    ("North Atlantic","1941-05-25"),
    ("North Cape", "1943-12-26"),
    ("Surigao Strait", "1944-10-25") ]

ships :: [Ship]
ships = [
    ("California", "Tennessee", 1921),
    ("Haruna","Kongo", 1916),
    ("Hiei", "Kongo", 1914),
    ("Iowa", "Iowa", 1943),
    ("Kirishima", "Kongo", 1915),
    ("Kongo", "Kongo", 1913),
    ("Missouri", "Iowa", 1944),
    ("Musashi", "Yamato", 1942),
    ("New Jersey", "Iowa", 1943),
    ("North Carolina", "North Carolina", 1941),
    ("Ramillies", "Revenge", 1917),
    ("Renown", "Renown",1916),
    ("Repulse", "Renown", 1916),
    ("Resolution", "Renown", 1916),
    ("Revenge", "Revenge", 1916),
    ("Royal Oak", "Revenge", 1916),
    ("Royal Sovereign", "Revenge", 1916),
    ("Tennessee","Tennessee", 1920),
    ("Washington", "North Carolina", 1941),
    ("Wisconsin", "Iowa", 1944),
    ("Yamato", "Yamato", 1941),
    ("Yamashiro", "Yamato", 1947),
    ("South Dakota", "North Carolina", 1941),
    ("Bismarck", "North Carolina", 1911),
    ("Duke of York", "Renown", 1916),
    ("Fuso", "Iowa", 1940),
    ("Hood", "Iowa", 1942),
    ("Rodney", "Yamato", 1915),
    ("Yanashiro", "Yamato", 1918),
    ("Schamhorst", "North Carolina", 1917),
    ("Prince of Wales", "North Carolina", 1937),
    ("King George V","Iowa", 1942),
    ("West Virginia", "Iowa", 1942) ]

classes :: [ShipClass]
classes = [
    ("Bismarck", "bb", "Germany"),
    ("Iowa", "bb", "USA"),
    ("Kongo", "bc", "Japan"),
    ("North Carolina", "bb", "USA"),
    ("Renown", "bc", "Gt.Britain"),
    ("Revenge", "bb", "Gt.Britain"),
    ("Tennessee", "bb", "USA"),
    ("Yamato", "bb", "Japan")]

database :: Database
database = (outcomes, battles, ships, classes)
--TASK 1 DUMMY VALUES END HERE

--TASK 2 DUMMY VALUES START HERE
type Title = String
type Address = String
type Year = Int
type Gender = Char
type Length = Int
type ProducerID = Int
type Networth = Integer
type Movie = (Title, Year, Length, Name, ProducerID)
type MovieStar = (Name, Gender)
type StarsIn = (Name, Title)
type Studio = (Name, Int)
type MovieExec = (Name, ProducerID, Networth)
type MovieDB = ([Movie], [MovieStar], [StarsIn], [Studio],[MovieExec])

studios :: [Studio]
studios = [
    ("Disney", 199),
    ("USA Entertainm.", 222),
    ("Fox",333),
    ("Paramount", 123),
    ("MGM", 555)]

movieExecs :: [MovieExec]
movieExecs = [
    ("George Lucas", 555, 200000000),
    ("Ted Turner",333, 125000000),
    ("Stephen Spielberg", 222, 100000000),
    ("Merv Griffin", 199, 112000000),
    ("Calvin Coolidge", 123, 20000000)]

movies :: [Movie]
movies = [
    ("Pretty Woman", 1990, 119, "Disney", 199),
    ("The Man Who Wasn't There", 2001, 116, "USA Entertainm.",555),
    ("Logan's run", 1976, 120, "Fox", 333),
    ("Star Wars",1977, 124, "Fox", 555),
    ("Empire Strikes Back", 1980, 111,"Fox", 555),
    ("Star Trek", 1979, 132, "Paramount", 222),
    ("StarTrek: Nemesis", 2002, 116, "Paramount", 123),
    ("Terms of Endearment", 1983, 132, "MGM", 123),
    ("The Usual Suspects",1995, 106, "MGM", 199),
    ("Gone With the Wind", 1938, 238,"MGM", 123),
    ("The Fellowship of the Ring", 2001, 178, "USAEntertainm.", 222)]

stars :: [MovieStar]
stars = [
    ("Jane Fonda", 'F'),
    ("Alec Baldwin", 'M'),
    ("Kim Basinger", 'F'),
    ("Harrison Ford", 'M'),
    ("Debra Winger",'F'),
    ("Jack Nicholson", 'M'),
    ("Sandra Bullock", 'F'),
    ("Orlando Bloom", 'M'),
    ("Cate Blanchett", 'F'),
    ("Liv Tyler",'F'),
    ("Billy Bob Thornton", 'M'),
    ("Scarlett Johansson", 'F')]

starsIn :: [StarsIn]
starsIn = [
    ("Kim Basinger", "Star Wars"),
    ("Alec Baldwin","Star Wars"),
    ("Harrison Ford", "Star Wars"),
    ("Harrison Ford","Empire Strikes Back"),
    ("Jack Nicholson", "The Usual Suspects"),
    ("Jane Fonda", "Terms of Endearment"),
    ("Jack Nicholson", "Terms of Endearment"),
    ("Sandra Bulloc", "The Usual Suspects"),
    ("Billy Bob Thornton", "The Man Who Wasn't There"),
    ("Scarlett Johansson", "The Man Who Wasn't There"),
    ("Orlando Bloom", "The Fellowship of the Ring"),
    ("Cate Blanchett", "The Fellowship of the Ring"),
    ("Liv Tyler","Logan's run")]

db :: MovieDB
db = (movies, stars, starsIn, studios, movieExecs)
--TASK 2 DUMMY VALUES END HERE