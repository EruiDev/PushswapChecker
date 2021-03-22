module Parameters where

sa :: ([Int], [Int]) -> ([Int], [Int])
sa (a:ab:as, b) = (ab:a:as, b)

sb :: ([Int], [Int]) -> ([Int], [Int])
sb (a, b:bb:bs) = (a, bb:b:bs)

sc :: ([Int], [Int]) -> ([Int], [Int])
sc (a, b) = let rt = sa (a, b) in sb rt

pa :: ([Int], [Int]) -> ([Int], [Int])
pa (a, []) = (a, [])
pa (a, b:bs) = (b:a, bs)

pb :: ([Int], [Int]) -> ([Int], [Int])
pb ([], b) = ([], b)
pb (a:as, b) = (as, a:b)

ra :: ([Int], [Int]) -> ([Int], [Int])
ra (a:as, b) = (as ++ [a], b)

rb :: ([Int], [Int]) -> ([Int], [Int])
rb (a, b:bs) = (a, bs ++ [b])

rr :: ([Int], [Int]) -> ([Int], [Int])
rr (a, b) = let rt = ra (a, b) in rb rt

rra :: ([Int], [Int]) -> ([Int], [Int])
rra (a, b) = (last a: init a, b)

rrb :: ([Int], [Int]) -> ([Int], [Int])
rrb (a, b) = (a, last b: init b)

rrr :: ([Int], [Int]) -> ([Int], [Int])
rrr (a, b) =  let rt = rra (a, b) in rrb rt