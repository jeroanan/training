myReverse :: (Eq a) => [a] -> [a] -> [a]
myReverse [] o = o
myReverse x o = myReverse y p
  where y = init x
        p = o++[(last x)]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == (myReverse x [])

main :: IO()
main = do
  putStrLn $ show $ isPalindrome [1,2,3]
  putStrLn $ show $ isPalindrome "madamimadam"
  putStrLn $ show $ isPalindrome [1,2,4,8,16,8,4,2,1]
