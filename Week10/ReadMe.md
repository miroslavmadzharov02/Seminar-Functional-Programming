# Task 1

Define a new **polymorphic** algrebraic data type called `Point`. A point may have two or three dimensions. Create an instance for every dimension and print it.

# Task 2

![Alt text](https://raw.githubusercontent.com/SimeonHristov99/FP_IS_Summer_21-22/main/Week_10%20-%20Algebraic%20Types.%20Graphs.%20Tuples/assets/graph1.png)
![Alt text](https://raw.githubusercontent.com/SimeonHristov99/FP_IS_Summer_21-22/main/Week_10%20-%20Algebraic%20Types.%20Graphs.%20Tuples/assets/graph2.png)
![Alt text](https://raw.githubusercontent.com/SimeonHristov99/FP_IS_Summer_21-22/main/Week_10%20-%20Algebraic%20Types.%20Graphs.%20Tuples/assets/graph3.png)

# Task 3

Нека е дефинирана следната структура на база от данни:

```haskell
type Name = String
type Date = String
type Class = String
type Result = String
type Launched = Int

data Battle = Battle Name Date
 deriving (Show)
data Ship = Ship Name Class Launched
 deriving (Show)
data Outcome = Outcome Name Name Result
 deriving (Show)

type Database = ([Outcome], [Battle], [Ship])
```

Алгебричният тип `Battle` представя данните за дадена битка - нейното име и датата, на която се е състояла. Алгебричният тип `Ship` представя данните за даден кораб - неговото име и годината на пускането му във вода. Алгебричният тип `Outcome` представя данните за резултата за даден кораб от дадена битка - името на кораба, името на битката и резултата за кораба - дали е бил повреден (`damaged`), потънал (`sunk`), или неповреден (`ok`).

Дефинирайте функция, която получава като аргумент база от данни и връща имената на всички кораби, потънали в битка, под формата на списък от двойки от вида `(<име на битка>,<списък от имена на кораби, потънали в тази битка>)`.

Примери:

```haskell
print $ getSunk database == [("Guadalcanal",["Kirishima"]),("North Atlantic",["Bismarck","Hood"]),("North Cape",["Schamhorst"]),("Surigao Strait",["Yamashiro","Fuso"])]
```

Here is what the full database looks like:

![Alt text](https://raw.githubusercontent.com/SimeonHristov99/FP_IS_Summer_21-22/main/Week_10%20-%20Algebraic%20Types.%20Graphs.%20Tuples/assets/shipDB.png)

# Task 4

Нека имаме следната структура на филмова база от данни:

```haskell
type Name = String
type Title = String
type Address = String
type Year = Int
type Gender = Char
type Length = Int

type ProducerID = Int
type Networth = Integer

data Movie = Movie Title Year Length Name ProducerID
 deriving (Show)
data MovieStar = MovieStar Name Gender
 deriving (Show)
data StarsIn = StarsIn Name Title
 deriving (Show)

data Studio = Studio Name Int
 deriving (Show)
data MovieExec = MovieExec Name ProducerID Networth
 deriving (Show)

type MovieDB = ([Movie], [MovieStar], [StarsIn], [Studio], [MovieExec])
```

Алгебричният тип `Movie` представя данните за даден филм - неговото име, годината му на излизане, продължителността му, името на студиото, което го e създало и номерът на продуцента. Алгебричният тип `MovieStar` представя данните за даден актьор - неговото име и пол. Алгебричният тип `StarsIn` свързва име на актьор с филм, в който той участва. Алгебричният тип `Studio` представя данните за дадено студио - неговото име и номера на неговия президент (който е и продуцент). Алгебричният тип `MovieExec` представя данните за даден продуцент - неговото име, номер и нетна стойност на активите. Стойностите от тип `MovieDB` са вектори с пет елемента - списъци, които представят базата от данни. Петте списъка съдържат съответно всички налични данни за филми, актьори, участия на актьори във филми, студиа и продуценти.

Напишете следните функции:

- функция, която получава като аргументи име на студио, година и база от данни за филми и извежда имената на актьорите, участвали във филми, продуцирани от зададеното студио през зададената година;

- функция, която по име на студио и база от данни за филми извежда името на президента на зададеното студио.

Примери:

```haskell
print $ getFeaturedStars "MGM" 1995 db == ["Jack Nicholson", "Sandra Bulloc"]
print $ getFeaturedStars "USA Entertainm." 2001 db == ["Billy Bob Thornton", "Scarlett Johansson", "Orlando Bloom", "Cate Blanchett", "Liv Tyler"]

print $ getPresident "Paramount" db == "Calvin Coolidge"
print $ getPresident "Fox" db == "Ted Turner"
print $ getPresident "USA Entertainm." db == "Stephen Spielberg"
```

Here is what the full database looks like:

![Alt text](https://raw.githubusercontent.com/SimeonHristov99/FP_IS_Summer_21-22/main/Week_10%20-%20Algebraic%20Types.%20Graphs.%20Tuples/assets/movieDB.png)