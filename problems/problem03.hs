-- Problem 3: Find the kth element of a list.
-- The first element in the list is number 1.
elementAt :: [a] -> Int -> a
elementAt [] _ = error "index out of bounds"
elementAt (x:xs) n
    | n <= 0     = error "index out of bounds"
    | n == 1    = x
    | otherwise = elementAt xs (n-1)
