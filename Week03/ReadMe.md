# Task 1

A narcissistic number is a number which is the sum of its own digits, each raised to the power of the number of digits. Define a predicate that checks whether a given whole number is a narcissistic number.

> **Implementation detail**: Use only linearly recursive procedures.

For example, take 153 (3 digits):

    1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153

and 1634 (4 digits):

    1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634

Test cases:

    print $ isNarcissistic 7 == True
    print $ isNarcissistic 12 == False
    print $ isNarcissistic 370 == True
    print $ isNarcissistic 371 == True
    print $ isNarcissistic 1634 == True

# Task 2

Define a function that accepts two whole numbers *x* and *n* and calculates the following sum **via a linearly iterative process**:

    1 + x + x^2 + x^3 + ... + x^n

Test cases:

    print $ calculateSum 5 0 == 1 -- x=5, n=0
    print $ calculateSum 5 1 == 6
    print $ calculateSum 10 1 == 11
    print $ calculateSum 1 11 == 12
    print $ calculateSum 2 11 == 4095

# Task 3

Write a function that finds the maximum digit in a number.

Test cases:

    print $ findMax 55345 == 5
    print $ findMax 14752 == 7
    print $ findMax 329450 == 9
    print $ findMax 9521 == 9

# Task 4

Define a function *(sum-numbers start finish)* that returns the sum of all numbers in the interval [*start*, *finish*] whose digits are ordered in descending order **via a linearly recursive process**.

Test cases:

    print $ sumNumbers 1 9 == 45
    print $ sumNumbers 199 203 == 200
    print $ sumNumbers 219 225 == 663
    print $ sumNumbers 225 219 == 663

# Task 5

Define a predicate that accepts two non-negative inputs - *x* and *y* and checks whether *x* is a sub-number of *y*.

Test cases:

    print $ subNum 123 5123783 == True -- x = 123, y = 5123783
    print $ subNum 0 0 == True
    print $ subNum 10 101 == True
    print $ subNum 101 101 == True
    print $ subNum 10 0 == False
    print $ subNum 1253 5123783 == False
    print $ subNum 12 0 == False

# Task 6

A digital root is the recursive sum of all the digits in a number. Given *n*, take the sum of the digits of *n*. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

Test cases:

    print $ digitalRoot 16 == 7
    -- => 1 + 6
    -- => 7
    print $ digitalRoot 942 == 6
    -- => 9 + 4 + 2
    -- => 15 ...
    -- => 1 + 5
    -- => 6
    print $ digitalRoot 132189 == 6
    print $ digitalRoot 493193 == 2

# Task 7

Define the function sine, that accepts a whole number and a real number (representing radians) and returns the n-th partial sum of sin(x).

Reference the formula for writing sin(x) around the origin:

![Alt text](pictures/Task5.png?raw=true "Task5")

Test cases:

    print $ mySin 100 1 == 0.8414709848078965 -- n = 100, x = 1
    print $ mySin 100 0.5 == 0.479425538604203
