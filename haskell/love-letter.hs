makePalindrome :: String -> Int -> Int
makePalindrome [] n = n
makePalindrome (s:ss) n = n

doPalindromes :: Int -> IO()
doPalindromes 0 = putStrLn ""
doPalindromes n = do
  putStrLn $ show $ makePalindrome "" 0
  doPalindromes $ pred n



main :: IO()
main = do
  n <- readLn :: IO(Int)
  doPalindromes n
