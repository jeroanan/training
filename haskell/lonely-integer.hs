import Data.List

-- There are N integers in an array A. All but one integer occur in pairs.
-- Your task is to find out the number that occurs only once.
sortIntIntTuple :: (String,Int) -> (String,Int) -> Ordering
sortIntIntTuple a b | ((snd a) < (snd b)) = LT
                       | otherwise = GT

findNumber :: String -> Int
findNumber (s) = do
    read (fst $ head $ p) :: Int
    where a = (map (\ns -> (head ns, length ns)) . group .sort . words)
          p = sortBy sortIntIntTuple $ a s

main :: IO()
main = do
  getLine
  numbers  <- getLine
  putStrLn $ show $ findNumber numbers
