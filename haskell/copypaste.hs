do_copy_paste :: String -> String -> Integer -> String
do_copy_paste s1 s2 p = first_part ++ s2 ++ second_part
  where i = fromIntegral p
        first_part = take i s1
        second_part = drop i s1


copy_string :: String -> String -> Integer -> IO ()
copy_string s1 s2 p = putStrLn $ do_copy_paste s1 s2 p

main :: IO()
main = copy_string "abcdefghi" "xyz" 3
