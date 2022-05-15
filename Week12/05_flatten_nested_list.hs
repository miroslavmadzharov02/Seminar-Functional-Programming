data NestedList = Elem Int | List [NestedList]

flatten :: NestedList -> [Int]
flatten (Elem value) = [value]
flatten (List cs) = concatMap flatten cs