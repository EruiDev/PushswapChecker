module Basic where
import Parameters
import Compare

middleMan :: String -> ([Int], [Int]) -> Int
middleMan a (b, c) =
    let final = listToCall (words a) (b, c) in
        compareList final

listToCall :: [String] -> ([Int], [Int]) -> ([Int], [Int])
listToCall [] (a, b) = (a, b)
listToCall (a:as) (b, c) = let val = parameterHandler a (b, c)
    in listToCall as val

parameterHandler :: String -> ([Int], [Int]) -> ([Int], [Int])
parameterHandler a (b, c) = case a of
    "sa" -> sa (b, c)
    "sb" -> sb (b, c)
    "sc" -> sc (b, c)
    "pa" -> pa (b, c)
    "pb" -> pb (b, c)
    "ra" -> ra (b, c)
    _ -> paramExtention a (b, c)


paramExtention :: String -> ([Int], [Int]) -> ([Int], [Int])
paramExtention a (b, c) = case a of
    "rb" -> rb (b, c)
    "rr" -> rr (b, c)
    "rra" -> rra (b, c)
    "rrb" -> rrb (b, c)
    "rrr" -> rrr (b, c)
    _ -> (b, c)