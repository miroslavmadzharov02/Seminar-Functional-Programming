# Task 1

Define a predicate that checks whether a non-negative number is a palindrome.

Hint:

    A number is a palindrome if and only if it is the same number from right to left as well as from left to right.

Test cases:

    print $ isPalindrome 1 == True
    print $ isPalindrome 6 == True
    print $ isPalindrome 1010 == False
    print $ isPalindrome 505 == True
    print $ isPalindrome 123321 == True
    print $ isPalindrome 654 == False
    print $ isPalindrome 121 == True
    print $ isPalindrome 12 == False
    print $ isPalindrome 120 == False
    print $ isPalindrome 12321 == True
    print $ isPalindrome 1221 == True

# Task 2

Define a recursive function for calculating the sum of the digits of a whole number.

Test cases:

    print $ sumDigitsRec 12345 == 15
    print $ sumDigitsRec 123 == 6

# Task 3

Define a recursive and an iterative function for calculating *x* to the power of *n*, where *x* is real and *n* is positive.

Test cases:

    print $ powRec 2 5 == 32
    print $ powRec 15 3 == 3375

    print $ powIter 2 5 == 32
    print $ powIter 15 3 == 3375
    
    --print $ powRec 2 0 == 1 -- should return an error (according to the task description)

# Task 4

Define a predicate that checks whether a number is prime.

Hint:

    A number - n, is prime if and only if it is natural and its only divisors are 1 and n.

Test cases:

    print $ isPrime 1 == False
    print $ isPrime 2 == True
    print $ isPrime 3 == True
    print $ isPrime 6 == False
    print $ isPrime 61 == True

# Task 5

Define a function that returns the sum of the divisors of a non-negative number.

Test cases:

    print $ sumDivs 0 == 0
    print $ sumDivs 1 == 1
    print $ sumDivs 6 == 12 -- 1 + 2 + 3 + 6
    print $ sumDivs 12345 == 19776

# Task 6

Define a predicate that checks whether a number is perfect.

Test cases:

    print $ isPerfect 1 == False -- the sum of the divisors is 0, because of the hint
    print $ isPerfect 6 == True -- 1 + 2 + 3 = 6 = 6
    print $ isPerfect 495 == False
    print $ isPerfect 33550336 == True

Hint:

    A number is perfect if and only if it is natural and equal to the sum of its divisors that are less than n.

# Task 7

Define a predicate that checks whether the digits of a non-negative whole number are ordered in an ascending order.

Test cases:

    print $ hasIncDigits 1244 == True
    print $ hasIncDigits 12443 == False
