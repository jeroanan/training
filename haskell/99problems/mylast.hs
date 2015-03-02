myLast :: [a] -> a
myLast s = head (reverse s)

main :: IO()
main = do
  putStrLn $ show $ myLast [1, 2, 3, 4]
  putStrLn $ show $ myLast ['x', 'y', 'z']
