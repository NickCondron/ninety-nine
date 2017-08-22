--Sorting a list of lists according to length of sublists
import Data.List
import Data.Function

lsort :: [[a]] -> [[a]]
lsort = sortBy (compare `on` length)

--sort by frequency of list lengths
lfsort :: [[a]] -> [[a]]
lfsort xs = xs & sortBy (compare `on` length)
               & groupBy ((==) `on` length)
               & sortBy (compare `on` length)
               & concat 

--alternate way of writing
lfsort2 :: [[a]] -> [[a]]
lfsort2 = concat . lsort . groupBy ((==) `on` length) . lsort
