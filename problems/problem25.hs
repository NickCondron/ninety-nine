-- Problem 25: Generate a random permutation of the elements of a list.

import Data.List
import System.Random

rndpermu :: [a] -> IO [a]
rndpermu xs = do
    gen <- getStdGen
    return $ rndpermu' xs gen

rndpermu' [] _ = []
rndpermu' [x] _ = [x]
rndpermu' xs g = let (i, gen) = randomR (1, length xs - 1) g
                 in let (first, rest) = splitAt i xs
                    in last first : rndpermu' ((init first) ++ rest) gen
