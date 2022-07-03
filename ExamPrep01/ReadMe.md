# Task 1

A number is interesting if and only if it is evenly divided by the sum of its digits. Define a predicate that checks whether a number is interesting.

Test case:

    print $ isInteresting 410 == True
    print $ isInteresting 212 == False
    print $ isInteresting 567 == False
    print $ isInteresting 70 == True 
    print $ isInteresting 5 == True 
    print $ isInteresting 4 == True 

# Task 2

Define a function that returns the sum of the special numbers in the interval [x, y] (x <= y). A number is special if it contains 6 and can be expressed as 4k + 1, where k is a whole number.

> **Implementation detail**: Solve the task with one line of code.

Test case:

    print $ specialSum 1 100 == 195 -- 61, 65, 69

# Task 3

Write a function that, for a list *xss* whose elements are non-empty lists of numbers, returns a list of those elements of *xss* that represent an arithmetic progression.

Test case:

    print $ onlyArithmentic [[3], [1, 2, 3, 4, 5], [3, 5, 8, 9, 11]]  == [[3], [1, 2, 3, 4, 5]]

# Task 4

Define the function sine, that accepts a whole number and a real number (representing radians) and returns the n-th partial sum of sin(x).

Reference the formula for writing sin(x) around the origin:

![Alt text](https://raw.githubusercontent.com/SimeonHristov99/FP_IS_Summer_21-22/main/Additional_1/assets/sin.png)
