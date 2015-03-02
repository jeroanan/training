secondsToHours :: Int -> Int
secondsToHours n = ((n `div` 60) `div` 60)

main :: IO()
main = do
  n <- readLn :: IO Int
  let h = secondsToHours n
  let hours = show h
  putStrLn $ "About " ++ hours ++ " hours."
