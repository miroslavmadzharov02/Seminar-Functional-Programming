# Tasks 1, 2, 3, 4

Resolve last year's test 1.

Test cases:

    -- Task 1
    print $ sumOfEvenly 1 10 == 41
    print $ sumOfEvenly 5 20 == 175

    -- Task 2
    print $ (kthMaxMin [-1]) 1 == -1
    -- print $ (kthMaxMin [-1,0,-1,0,-2,3,1,-1]) 3 -- error “No such number”
    print $ (kthMaxMin [-1,-5,-6,-6,-6,-6]) 2 == -5
    print $ (kthMaxMin [1,2,3,4,-5,6,7,-2,-1,0]) 2 == -2

    -- Task 3
    print $ persistence 39 == (3,[27,14,4])
    print $ persistence 999 == (4,[729,126,12,2])
    print $ persistence 126 == (2,[12,2])
    print $ persistence 4 == (1,[4])

    -- Task 4
    print $ scoreHand ["A"] == 11
    print $ scoreHand ["A","J"] == 21
    print $ scoreHand ["5","3","7"] == 15
    print $ scoreHand ["5","4","3","2","A","K"] == 25
    print $ scoreHand ["2","3"] == 5
    print $ scoreHand ["4","5","6"] == 15
    print $ scoreHand ["7","7","8"] == 22
    print $ scoreHand ["K","J","Q"] == 30
    print $ scoreHand ["A","3"] == 14
    print $ scoreHand ["A","A"] == 12
    print $ scoreHand ["A", "10", "A"] == 12
    print $ scoreHand ["A","2","A","9","9"] == 22

# Tasks 1, 2, 3

Resolve test 1 from 2020.

Test cases:

    -- Task 1
    print $ checkSequence [2, 9, 15] == True
    print $ checkSequence [11, 14, 20, 27, 31] == True
    print $ checkSequence [11, 14, 28, 27, 31] == False
    print $ checkSequence [11, 14, 14, 29, 31] == False

    -- Task 2
    print $ removNb 26 == [(15,21),(21,15)]
    print $ removNb 100 == []
    print $ removNb 101 == [(55,91),(91,55)]

    -- Task 3
    print $ liesOn (line (0, 0) (1, 1)) (5.5, 5.5) == True
    print $ liesOn (line (0, 0) (1, 1)) (0.5, 0) == False

# Task 4

Define a function that accepts a natural number greater than 1 and returns a sorted list of prime factors the product of which gives the number.

Test cases:

    print $ factorize 152 == [2, 2, 2,19]
    print $ factorize 123 == [3, 41]
    print $ factorize 13 == [13]

# Task 5

Define a function that accepts an unary function and a list of natural numbers. The return value should be a function that accepts a predicate and returns the sum of the squares of the numbers which squared pass the predicate.

Test cases:

    print $ (specialSum (5-) [1..10]) (> 0) == 30
    print $ (specialSum (+1) [(-5)..5]) odd == 45
