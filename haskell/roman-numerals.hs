get_numeral_value :: Char -> Int
get_numeral_value 'I' = 1
get_numeral_value 'V' = 5
get_numeral_value 'X' = 10
get_numeral_value 'L' = 50
get_numeral_value 'C' = 100
get_numeral_value 'D' = 500
get_numeral_value 'M' = 1000
get_numeral_value c = error $ "Unrecognised numeral " ++ [c]

show_numeral :: Char -> IO()
show_numeral c = (putStrLn . show . get_numeral_value) c

roman_to_decimal :: String -> Int -> String
roman_to_decimal r total | length r == 1 = show $ total + current_numeral
                         | current_numeral >= next_numeral = roman_to_decimal (tail r) (total+current_numeral)
                         | otherwise = roman_to_decimal (tail r) (total-current_numeral)
  where current_numeral = (get_numeral_value . head) r
        next_numeral = (get_numeral_value . head . tail) r

main :: IO()
main = do
  putStrLn $ roman_to_decimal "MCMX" 0
