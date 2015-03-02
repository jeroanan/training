data Car = Car { company :: String,
                 model :: String,
                 year :: Int
                 } deriving (Show)

main :: IO()
main = do
  putStrLn $ show a
  putStrLn $ company a
  putStrLn $ model a
  putStrLn $ show $ year a
  where a = Car { company = "Renault", model="Megane", year=2009}
