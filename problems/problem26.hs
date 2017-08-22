-- Generate the k combinations of a list of length n

combinations k xs = [ x | x <- subsequences xs, length x <= k]

combinations2 k xs = [ xs !! i : x | i <- [0..(length xs - 1)]
                                     x <- combinations3 (k-1) (drop (i+1) xs) ]
