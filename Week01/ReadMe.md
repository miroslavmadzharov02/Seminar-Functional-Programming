# Task 1

Define functions that return:

- the smaller of two whole numbers:
  - add a test with negative numbers;
  - using if-else;
  - using guards;
  - using a built-in function.
- the last digit of a number
- the quotient of the division of two whole numbers
- the quotient and remainder of the division of two whole numbers
- a whole number without its last digit
- the quotient and remainder of the division of two real numbers
- the quotient of the division of two real numbers
- the average of two whole numbers
- the number rounded to the second digit after the "."

Test cases:

    print $ min 5 6 == 5
    print $ minIf 15 60 == 15
    print $ minIf 60 15 == 15
    print $ minGuard 15 60 == 15
    print $ minGuard 60 15 == 15
    print $ minBuiltIn 60 15 == 15

    print $ lastDigit 154 == 4

    print $ quotientWhole 64 2 == 32
    print $ divWhole 154 17 == 9.058823529411764

    print $ removeLastDigit 154 == 15    

    print $ divReal 154.451 10.01 == 15.42967032967033
    print $ quotientReal 154.21 17.17 == 9

    print $ avgWhole 5 1542 == 773.5

    print $ roundTwoDig 3.1413465345321 == 3.14
    print $ roundTwoDigButWithMagic 3.1413465345321 == 3.14 -- partial function application and composition (defining a function at functional level)

# Task 2

Define a predicates that check:

- whether two numbers are not equal:
  - **in one line without** using if-else;
  - using guards.
- whether a whole number *x* is between two whole numbers - *a* and *b* **in one line without** using if-else.

Test cases:

    print $ areNotEqualOneLine 5 2 == True
    print $ areNotEqualOneLine 5 5 == False

    print $ areNotEqualGuards 5 2 == True
    print $ areNotEqualGuards 5 5 == False
    
    print $ inside 4 1 5 == True
    print $ inside 4 5 1 == True
    print $ inside 20 10 50 == True
    print $ inside 1 10 50 == False

# Task 3

Define a recursive and an iterative function for calculating the factorial of a non-negative number.

- solve with a linearly recursive process;
- solve using a linearly iterative process.

Test cases:

    print $ factRec 11 == 39916800
    --print $ factRec (-11) -- error: x was negative
    print $ factIter 11 == 39916800
    --print $ factIter (-11) -- error: x was negative

# Task 4

Define a recursive and an iterative function for calculating the number at index *i* in the Fibonacci sequence (0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...).

> **Implementation detail**: The input will always be valid, i.e. greater than -1.

Test cases:

    print $ fibRec 11 == 89
    print $ fibIter 11 == 89
    print $ fibIter 110 == 43566776258854844738105
