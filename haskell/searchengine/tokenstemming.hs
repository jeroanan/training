import Data.List

get_longest_suffix t ss = let relevant_suffixes = [x | x<-ss, x `isSuffixOf` t] in
  if relevant_suffixes == []
  then ""
  else (fst . head . reverse) $ sortBy sortStringIntTuple $ zip relevant_suffixes (map length relevant_suffixes)

apply_token :: String -> [String] -> String
apply_token token [] = token
apply_token token ss = take ((length token)-(length (get_longest_suffix token ss))) token

sortStringIntTuple :: (String,Int) -> (String,Int) -> Ordering
sortStringIntTuple a b | ((snd a) < (snd b)) = LT
                       | otherwise = GT

token_stemming :: [String] -> [String] -> IO ()
token_stemming [] _ = return ()
token_stemming (t:ts) suffixes = do
  putStrLn applied_token
  token_stemming ts $ suffixes
  where applied_token = apply_token t suffixes

main = let tokens = ["10", "times", "a", "year", "IEN", "Italia", "provides", "a", "digest", "of", "the", "latest",
                     "products", "news", "and", "technologies", "available", "on", "the", "Italian", "market", "In",
                     "2009", "nearly", "14", "000", "subscribers", "received", "IEN", "Italia", "mostly", "engineers",
                     "and", "purchasing", "managers", "IEN", "Italia", "also", "publishes", "newsletters", "and",
                     "updates", "its", "website", "with", "daily", "news", "about", "new", "products", "and",
                     "services", "available", "to", "the", "Italian", "market"]
           suffixes =  ["es", "a", "est", "le", "n", "e", "09", "rly", "ved", "lia", "rs", "ers", "N",
                                      "ia", "so", "s", "ters", "nd", "th", "ws", "w", "ts", "d"] in
        token_stemming tokens suffixes
