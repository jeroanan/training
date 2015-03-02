import Data.Char

apply_n_times :: Char -> (Char -> Char) -> Int -> Char
apply_n_times c f 0 = c
apply_n_times c f n = apply_n_times (f c) f (pred n)

do_rot13 :: Char -> Char
do_rot13 c | in_first_half_of_alphabet =  apply_n_times c succ 13
           | in_second_half_of_alphabet = apply_n_times c pred 13
           | otherwise = c
  where in_first_half_of_alphabet = toLower c >= 'a' && c<= 'm'
        in_second_half_of_alphabet = toLower c > 'm' && c<= 'z'

main :: IO()
main = putStrLn (map do_rot13 "the quick brown fox jumped over the lazy dog")
