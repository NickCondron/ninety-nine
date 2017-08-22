-- Problem 9: Pack consecutive dublicates of list elements into sublists.

--This is equivalent to 'group' from Data.List

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = (x:first) : pack second
              where (first, second) = span (==x) xs
