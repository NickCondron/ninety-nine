-- Problem 23: extract a given number of random elements from a list

import System.Random

randomSelect :: [a] -> [Int] -> IO [a]
randomSelect xs n = do
    gen <- getStdGen
    return $ take n [ xs !! i | i <- RandomRs (0, (length xs) - 1) gen]
