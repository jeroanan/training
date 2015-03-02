elementAt :: [a] -> Int -> Int -> a
elementAt s i c = if c == i
                  then s!!i
                  else elementAt s i (succ c)
                where l = (pred i)

main :: IO()
main = do
  putStrLn $ show $ elementAt [1,2,3] 2 0
  putStrLn $ show $ elementAt "haskell" 5 0
