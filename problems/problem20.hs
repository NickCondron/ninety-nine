-- Problem 20: remove the k'th element from a list

remove_at :: Int -> [a] -> (a, [a])
remove_at _ [] = error "Index out of bounds"
remove_at k (x:xs) 
    | k == 1 = (x, xs)
    | otherwise = (first, x:second)
                  where (first, second) = remove_at (k-1) xs
