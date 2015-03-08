main = do
  rs <- sequence[getLine, getLine]
  (putStrLn . show) $ (read (rs!!0) :: Int) + (read (rs!!1) :: Int)
