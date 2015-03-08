main = do
n <- readLn :: IO Int
let ws = replicate n $ "Hello World"
mapM_ putStrLn ws
