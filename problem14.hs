-- Problem 14: duplicate elements of a list

dupli :: [a] -> [a]
dupli = concatMap (replicate 2)
