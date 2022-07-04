main :: IO()
main = do
    print $ bestStudents [("Иван Иванов", 6.0), ("Петър Петров", 5.5), ("Мария Маринова", 6.0), ("Марина Петрова", 5.0)] == ["Иван Иванов", "Мария Маринова"]

bestStudents :: [(Name,Grade)] -> [Name]
bestStudents xs = [name | (name, gr) <- xs, gr == maxGrade xs]

maxGrade :: [(Name,Grade)] -> Double
maxGrade xs = maximum [gr | (_, gr) <- xs]

type Name = String
type Grade = Double