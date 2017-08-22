-- Problem 4: Find the number of elements in a list
myLength :: [a] -> Int
myLength = foldr (\x acc -> acc + 1) 0
