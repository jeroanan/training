myLength :: [a] -> Int -> Int
myLength [] c = c
myLength (x:xs) c = myLength xs (succ c)

main :: IO()
main = do
  putStrLn $ show $ myLength [123, 456, 789] 0
  putStrLn $ show $ myLength "Hello, world!" 0
