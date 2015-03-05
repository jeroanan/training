import Data.Char
import Data.List

isPangram l =
  if length intersection >= length allLetters
  then True
  else False
  where lowerL = nub $ map toLower l
        allLetters = ['a'..'z']
        intersection = lowerL `intersect` allLetters

main = do
  l <- getLine
  if isPangram l
  then putStrLn "pangram"
  else putStrLn "not pangram"
