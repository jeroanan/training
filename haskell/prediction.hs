--get_results :: Float -> Integer -> Integer
get_results n 0 = n
get_results n w = get_results newNumUsers (pred w)
  where newNumUsers = n+(n*0.07)


compute_prediction :: Integer -> Integer -> IO ()
compute_prediction n w = putStrLn $ show $ floor $ get_results (fromIntegral n) w


main :: IO()
main = compute_prediction 10 3
