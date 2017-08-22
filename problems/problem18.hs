-- Problem 18: Extract a slice from a list

slice :: [a] -> Int -> Int -> [a]
slice (x:xs) i j 
    | i > 1 = slice xs (i-1) (j-1)
    | otherwise = take j (x:xs)
