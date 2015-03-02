-- hashank likes strings in which consecutive characters are different. For example, he likes ABABA,
-- while he doesn't like ABAA. Given a string containing characters A and B only, he wants to change it into a
-- string he likes. To do this, he is allowed to delete the characters in the string.
--
-- Your task is to find the minimum number of required deletions.

countDeletions :: String -> Char -> Int -> Int
countDeletions [] _ i = i
countDeletions (s:ss) lc i | s == lc = countDeletions ss lc (succ i)
                           | otherwise = countDeletions ss s i

doCounts :: Int -> IO()
doCounts 0 = putStrLn ""
doCounts n = do
  l <- getLine
  putStrLn $ show $ countDeletions l ' ' 0
  (doCounts . pred) n

main :: IO()
main = do
   n <- readLn :: IO Int
   doCounts n
