get_longest_improvement :: [Integer] -> Integer -> Int -> Int -> Int
get_longest_improvement [] _ _ x = x
get_longest_improvement (x:xs) previous current longest =
    if still_streaking
    then get_longest_improvement xs x (succ current) max_streak
    else get_longest_improvement xs x 0 max_streak
    where still_streaking = x>=previous
          max_streak = maximum [(succ current), longest]

longest_improvement :: [Integer] -> IO ()
longest_improvement grades = putStrLn $ show $ get_longest_improvement grades 0 0 0


main :: IO()
main = longest_improvement [9, 7, 8, 2, 5, 5, 8, 7]
