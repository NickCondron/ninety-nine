-- Problem 22: create a list containing all integers wihthin a given range

range :: (Enum a, Eq a) => a -> a -> [a]
range f t 
    | f == t = [f]
    | otherwise = f : range (succ f) t

--alternative solution
--range f t = [f..t]
