-- Problem 15: Replicate the elemtns of a list a given number of times

repli :: [a] -> Int -> [a]
repli xs n = concatMap (replicate n) xs
