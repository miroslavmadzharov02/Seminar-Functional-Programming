## Task 1

Given a directed graph *g* with edges `[(1, 2), (1, 3), (2, 3), (2, 4)]` define the following functions:

    nodes - returns all the nodes of "g";
    neighbours - accepts a node and returns its neighbours;
    adjacencyList - returns the children of every parent.

> **Implementation detail**: Create types for the graph structure.

Test cases:

    print $ nodes [(1, 2), (1, 3), (2, 3), (2, 4)] == [1, 2, 3, 4]

    print $ neighbours 2 [(1, 2), (1, 3), (2, 3), (2, 4)] == [3, 4]
    print $ neighbours 4 [(1, 2), (1, 3), (2, 3), (2, 4)] == []
    
    print $ adjacencyList [(1, 2), (1, 3), (2, 3), (2, 4)] == [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])]

## Task 2

Define a function that checks whether a given path is valid in a graph `g = (1, [2, 3]), (2, [3, 4]), (3, []), (4, [])`.

Test cases:

    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 2, 4] == True
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 3, 4] == False
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [2, 3] == True
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [3, 1] == False

## Task 3

Define a new data type called "Shape". Shape must have four constructors:

- Circle: with one argument representing the radius;
- Rectangle: with two arguments representing the width and height;
- Triangle;
- Cylinder with two arguments for the radius of the base and height.

Create a shape from every type and output it.

## Task 4

Create a new data type called `Point2D` and define a function that accepts two functions: *f* and *g* and a list of points with two coordinates. The function should return those points for which `f(firstCoordinate) = g(secondCoordinate)` and should be able to work with whole as well as floating point numbers!

Test case:

    print $ myImages (\x -> x * x) (2+) [Point 2 2, Point 1 2, Point 3 7] == [Point 2 2, Point 3 7]

## Task 5

By using the "Shape" data type, define the following functions:

    isRound - returns whether a shape has a round side;
    is2D - returns whether a shape has two dimensions.

Test cases:

    print $ isRound (Circle 5) == True
    print $ isRound (Rectangle 2.5 4.5) == False
    print $ isRound (Rectangle 5.5 20.6) == False
    print $ isRound (Triangle 5.3 3.9 4.89) == False
    print $ isRound (Cylinder 20 30) == True

    print $ is2D (Circle 5) == True
    print $ is2D (Rectangle 2.5 4.5) == True
    print $ is2D (Rectangle 5.5 20.6) == True
    print $ is2D (Triangle 5.3 3.9 4.89) == True
    print $ is2D (Cylinder 20 30) == False
