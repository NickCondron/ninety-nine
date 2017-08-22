-- Problem 12

import Data.List

data Code a = Single a | Multiple Int a

decodeModified :: [Code a] -> [a]
decodeModified [] = []
decodeModified ((Single x):xs) = x : decodeModified xs
decodeModified ((Multiple n x):xs) = replicate n x ++ decodeModified xs
