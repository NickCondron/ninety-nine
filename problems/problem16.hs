-- Problem 16: Drop every N'th element from a list

dropEvery :: [a] -> Int -> [a]
dropEvery xs n = dropHelp xs n n

dropHelp :: [a] -> Int -> Int -> [a]
dropHelp [] _ _ = []
dropHelp (x:xs) p n 
    | p == 1 = dropHelp xs n n
    | otherwise = x : dropHelp xs (p-1) n
