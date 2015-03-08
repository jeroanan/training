doFilter [] os _ = os
doFilter (n:ns) os remove =
  if remove
  then doFilter ns os False
  else doFilter ns (os++[n]) True

f :: [Int] -> [Int]
f lst = doFilter lst [] True

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
  inputdata <- getContents
  mapM_ (putStrLn. show). f. map read. lines $ inputdata
