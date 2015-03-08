len :: [a] -> Int
len lst = (fst . head . reverse) $ zip [1..] lst
