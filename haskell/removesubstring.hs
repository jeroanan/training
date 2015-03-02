do_remove :: String -> Int -> Int -> String
do_remove s p n = first_part ++ second_part
  where first_part = take  (pred p) s
        second_part = drop (n+(pred p)) s

remove_substring :: String -> Integer -> Integer -> IO ()
remove_substring s p n = do
  putStrLn $ do_remove s (fromIntegral p) (fromIntegral n)

main :: IO()
main = remove_substring "abcdefghi" 4 3
