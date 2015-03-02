import Data.List

get_mean grades = mean
  where sum_grades = sum grades
        num_grades = genericLength grades
        mean = floor $ realToFrac sum_grades / num_grades

compute_average_grade :: [Integer] -> IO ()
compute_average_grade grades = putStrLn $ show $ get_mean grades

main :: IO()
main = compute_average_grade [1, 2, 8, 4, 5, 8, 3]
