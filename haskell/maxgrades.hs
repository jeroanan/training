max_grade :: [Integer] -> IO ()
max_grade grades = (putStrLn . show . maximum) grades

main :: IO()
main = max_grade [1, 2, 8, 4, 5, 8, 3]
