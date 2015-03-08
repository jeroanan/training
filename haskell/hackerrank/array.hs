find x p (n:ns) | x==n = p
                | otherwise = find x (succ p) ns

main = do
  val <- getLine
  getLine
  arr <- getLine
  (putStrLn . show) $ find val 0 (words arr)
