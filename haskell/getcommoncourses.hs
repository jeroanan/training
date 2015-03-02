import Data.List

common_courses :: [Integer] -> [Integer] -> [Integer]
common_courses courses1 courses2 = common_courses
  where common_courses = sort $ nub $ courses2 `intersect` courses1

get_common_courses :: [Integer] -> [Integer] -> IO ()
get_common_courses courses1 courses2 = mapM_ (putStrLn . show) common
  where common = common_courses courses1 courses2


main :: IO()
main = get_common_courses courses1 courses2
  where courses1 = [1, 2, 8, 4, 5, 8, 3]
        courses2 = [8, 2, 2, 7, 10]
