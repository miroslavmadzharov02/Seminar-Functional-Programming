import Data.List (partition)
getCardValue card 
    | elem card ["J", "K", "Q"] = 10
    | otherwise = read card

score currentSum [] = currentSum
score currentSum aces
 | currentSum + 11 * (length aces) > 21 = score (currentSum + 1) (tail aces)
 | otherwise = score (currentSum + 11 * (length aces)) []

scoreHand :: [String] -> Int
scoreHand xs = let parts = partition (/= "A") xs in
        score (sum $ map getCardValue $ fst parts) (snd parts)