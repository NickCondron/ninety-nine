-- Problem 8: Eliminate consecutive duplicates of list elements

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x1:x2:xs) --can be written as (x:ys@(y:_))
    | x1 == x2 = compress (x1:xs)
    | otherwise = x1:(compress (x2:xs))
