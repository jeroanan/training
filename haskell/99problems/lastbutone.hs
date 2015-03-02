lastbutone :: [a] -> a
lastbutone s = head $ drop 1 $ reverse s

main :: IO()
main = do
  putStrLn $ show $  lastbutone [1, 2, 3, 4]
  putStrLn $ show $  lastbutone ['A'..'Z']
