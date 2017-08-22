-- Problem 21: Insert an element at a given popsition into a list

insertAt :: a -> [a] -> Int -> [a]
insertAt _ [] _ = error "Index out of bounds"
insertAt y (x:xs) i 
    | i == 1 = y:x:xs
    | otherwise = x : insertAt y xs (i-1)
