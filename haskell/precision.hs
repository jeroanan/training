getPrecision :: Double -> Double -> Integer -> String
getPrecision p1 p2 v = (show perc1 ) ++ " " ++ (show perc2)
  where perc1 = roundUpOrDown ((fromIntegral v)*p1)
        perc2 = round ((fromIntegral v)*p2)


roundUpOrDown :: (RealFrac a) => a -> Int
roundUpOrDown n = if n-p  < 0.5
                  then floor n
                  else ceiling n
              where p = fromIntegral $ floor n


precision :: Double -> Double -> Integer -> IO ()
precision p1 p2 v = putStrLn $ getPrecision p1 p2 v



test_precision :: Double -> Double -> Integer -> String -> IO()
test_precision p1 p2 v expected = do
  putStr $ "Testing " ++ (show p1) ++ " " ++ (show p2) ++ " " ++ (show v) ++ "..."
  if test_passed
    then putStrLn "Pass"
    else putStrLn $ "Fail. Expected '" ++ expected ++ "' got '" ++ test_result
  where test_result = getPrecision p1 p2 v
        test_passed = test_result == expected

main :: IO()
main = do
  test_precision 0.95 0.05 100 "95 5"
  test_precision 0.5 0.5 1 "1 0"
  test_precision 0.12 0.88 35 "4 31"
  test_precision 0.25 0.75 2 "1 1"
