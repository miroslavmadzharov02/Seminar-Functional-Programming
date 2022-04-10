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
