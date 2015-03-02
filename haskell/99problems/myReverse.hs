myReverse :: [a] -> [a] -> [a]
myReverse [] o = o
myReverse x o = myReverse y p
  where y = init x
        p = o++[(last x)]

main :: IO()
main = do
    putStrLn $ myReverse "A man, a plan, a canal, panama!" []
    putStrLn $ show $ myReverse [1,2,3,4]  []
