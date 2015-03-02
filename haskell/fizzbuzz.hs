stringisnumber :: String -> Bool
stringisnumber s = s>= "0" && s <= "9999"

isfizznumber :: Integer -> Bool
isfizznumber n = n `mod` 3 == 0

isbuzznumber :: Integer -> Bool
isbuzznumber n = n `mod` 5 == 0

getfizzbuzzes :: String -> String
getfizzbuzzes s | stringisnumber s = if isfizznumber n && isbuzznumber n
                                     then "FizzBuzz"
                                     else s
                | otherwise = s
                where n = read s :: Integer

getbuzzes :: String -> String
getbuzzes s | stringisnumber s = if isbuzznumber n && (not $ isfizznumber n)
                                 then "Buzz"
                                 else s
            | otherwise = s
            where n = read s :: Integer

getfizzes :: String -> String
getfizzes s | stringisnumber s = if isfizznumber n && (not $ isbuzznumber n)
                                 then "Fizz"
                                 else s
            | otherwise = s
            where n = read s :: Integer

fizzbuzz :: Integer -> IO ()
fizzbuzz n = mapM_ putStrLn result
    where fizzbuzzes = map getfizzbuzzes $ map show [1..n]
          buzzes = map getbuzzes fizzbuzzes
          result = map getfizzes buzzes


main :: IO()
main = fizzbuzz 15
