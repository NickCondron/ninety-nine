-- Problem 17: Split a list into two parts based on given length

split :: [a] -> Int -> ([a], [a])
split (x:xs) n | n > 0 = let (f,s) = split xs (n-1)
                          in (x : f, s)
               | otherwise = ([], x:xs)
split [] _ = ([], [])
