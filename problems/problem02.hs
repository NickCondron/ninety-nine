myButLast :: [a] -> a
myButLast [] = error "empty list"
myButLast [x] = error "only one element"
myButLast (x:xs) = if length xs == 1 then x 
                   else myButLast xs
