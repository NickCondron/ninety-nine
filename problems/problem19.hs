-- Problem 19: Roatate a list N places to the left

rotate :: Int -> [a] -> [a]
rotate _ [] = []
rotate 0 xs = xs
rotate n xs = drop p xs ++ take p xs
              where p = n `mod` length xs
