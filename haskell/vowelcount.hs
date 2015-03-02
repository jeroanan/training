import Data.Char

get_number_of_vowels :: String -> Int
get_number_of_vowels s = length vowels_list
  where low_s = map toLower s
        vowels_list = [x | x<-low_s, x `elem` "aeiou"]

count_vowels :: String -> IO ()
count_vowels s = putStrLn . show $ get_number_of_vowels s

main :: IO()
main = do
  count_vowels "Get some"
  count_vowels "It is sunny today"
