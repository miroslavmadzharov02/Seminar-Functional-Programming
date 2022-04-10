type Rat = (Int, Int)

normalize :: Rat -> Rat
normalize (x, y) = (div x d, div y d)
 where d = gcd x y

normalizeUsingLet :: Rat -> Rat
normalizeUsingLet (x, y) = let d = gcd x y in (div x d, div y d)