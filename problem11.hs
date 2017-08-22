import Data.List

data Code a = Single a | Multiple Int a deriving (Show)

encodeModified :: (Eq a) => [a] -> [Code a]
encodeModified = map encodeOne . group

encodeOne :: [a] -> Code a
encodeOne xs = if length xs == 1 then Single (head xs) 
                                 else Multiple (length xs) (head xs)
