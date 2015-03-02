get_success_count :: [Integer] -> Integer -> Int
get_success_count grades min_grade = length successes
  where successes = [x | x<-grades, x>=min_grade]

count_successful_students :: [Integer] -> Integer -> IO ()
count_successful_students grades min_grade = putStrLn $ show $ get_success_count grades min_grade

main :: IO()
main = count_successful_students [1, 2, 8, 4, 5, 8, 3] 5
