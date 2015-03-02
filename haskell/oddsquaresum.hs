get_odd_square_sums :: Integer -> Integer -> [Integer]
get_odd_square_sums x y = [n*n | n<-[x..y], odd n]

odd_square_sum :: Integer -> Integer -> IO ()
odd_square_sum x y = putStrLn $ (show . sum) $ get_odd_square_sums x y

main :: IO()
main = odd_square_sum 1 5
