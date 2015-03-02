import Data.List

outputSort :: [Integer] -> IO()
outputSort [] = putStrLn ""
outputSort (x:xs) = do
  putStrLn $ show x
  outputSort xs

sort_locations :: Integer -> Integer -> Integer -> IO ()
sort_locations a b c = outputSort $ sort [a,b,c]

main :: IO()
main = sort_locations 100 25 95
