import Data.Char
primes :: [Int] -> [Int] -> [Int]
primes [] p = p
primes (g:gs) p = primes [n | n <- gs, ((n `mod` g)/=0), (odd n)]  (p++[g])

isNumeric :: String -> Bool
isNumeric [] = True
isNumeric (s:ss) = if (isNumber s)
                  then isNumeric ss
                  else False

makeRange :: Int -> Int -> [Int]
makeRange i j = if i < 2
                then [2..j]
                else [i..j]

getNum :: [String] -> Int -> Int
getNum s i = if (isNumeric $ s!!i)
              then read(s!!i) :: Int
              else 0

firstNum :: [String] -> Int
firstNum [] = 0
firstNum s = getNum s 0

secondNum :: [String] -> Int
secondNum [] = 0
secondNum s = getNum s 1

printLines :: [Int] -> IO()
printLines [] = putStrLn ""
printLines (x:xs) = do
  putStrLn $ show x
  printLines xs

main :: IO ()
main = do
    i <- getLine
    let h = words i
    printLines $ primes (makeRange (firstNum h) (secondNum h)) []
