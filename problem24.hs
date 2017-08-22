-- Problem 24:  Draw N different random numbers from the set 1..M

import Data.List
import System.Random

rndlotto :: Int -> Int -> IO [Int]
rndlotto n m = do
    gen <- getStdGen
    return $ rndlotto' gen n [1..m]

rndlotto' _ 0 _ = []
rndlotto' _ _ [] = error "n > m"
rndlotto' g n xs = let (i, gen) = randomR (0, length xs - 1) g
                   in xs !! i : rndlotto' gen (n-1) (delete (xs !! i) xs)
