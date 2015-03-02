get_substring :: String -> Integer -> Integer -> String
get_substring s p1 p2 =  drop startAt $ take endAt s
  where startAt = pred $ fromIntegral p1
        endAt = fromIntegral p2

select_substring :: String -> Integer -> Integer -> IO ()
select_substring s p1 p2 = putStrLn $ get_substring s p1 p2

main :: IO()
main = select_substring "abcdefghi" 2 4
