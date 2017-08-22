--Group the elements of a set into disjoint subsets
import Data.List hiding (group)
import Control.Monad

combinations' :: Int -> [a] -> [[a]]
combinations' k xs = [ x | x <- subsequences xs, length x == k]

combinations'2 :: Int -> [a] -> [[a]]
combinations'2 k xs = do
  x <- subsequences xs
  guard (length x == k)
  return x

group :: (Eq a) => [Int] -> [a] -> [[[a]]]
group [n] xs
  | n <= length xs = map (\x -> [x]) (combinations' n xs)
  | otherwise = [[[]]] --bad input
group (n:ns) xs = [ c:g | c <- combinations' n xs,
                          g <- (group ns (xs \\ c)) ]
