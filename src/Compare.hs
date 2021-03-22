module Compare where

isSorted :: (Ord a) => [a] -> Bool
isSorted []       = True
isSorted [x]      = True
isSorted (x:y:xs) = x <= y && isSorted (y:xs)

compareList :: ([Int], [Int]) -> Int
compareList (a, b) = if null b
                        then case isSorted a of
                            False -> 84
                            True -> 0
                    else 84