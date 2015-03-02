get_growth :: Integer -> Integer -> String
get_growth a b | b>=a = "Increase"
               | otherwise = "Decrease"

check_growth :: Integer -> Integer -> IO ()
check_growth d1 d2 = putStrLn $ get_growth d1 d2

test_check_growth :: Integer -> Integer -> String -> IO()
test_check_growth d1 d2 expected = do
  putStr $ "Testing " ++ (show d1) ++ " " ++ (show d2) ++ "..."
  if result == expected
  then putStrLn "Pass."
  else putStrLn $ "Fail. Got " ++ expected ++ ". Got " ++ result ++ "."
  where result = get_growth d1 d2

main :: IO()
main = do
  test_check_growth 400 1000 "Increase"
  test_check_growth 1000 800 "Decrease"
