myLength :: [a] -> Int
myLength [] = 0
myLength x = (fst . last) $ zip [1..] x

myLength2 :: [a] -> Int
--                 Function    Starting val, list (point-free here)
myLength2 = foldr (const (+1)) 0

main :: IO()
main = do
  putStrLn $ show $ myLength2 [123, 456, 789]
  putStrLn $ show $ myLength2 "Hello, world!"
  putStrLn $ show $ myLength2 ""
