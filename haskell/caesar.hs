shift 'Z' = 'A'
shift x = if x >= 'A' && x < 'Z'
          then succ x
          else x

do_caesar [] y = reverse y
do_caesar (x:xs) y = do_caesar xs $ shifted_x ++ y
  where shifted_x = [(shift x)]

caesar_shift :: String -> IO ()
caesar_shift s = putStrLn $ do_caesar s ""

main :: IO()
main = do
  caesar_shift "CAT"
  caesar_shift "HELLO SECRET AGENTZ"
