import Data.List
import Data.Maybe

do_tokenize :: String -> String -> [String] -> String -> [String]
do_tokenize "" _ terms termsofar = terms++[termsofar]
do_tokenize (q:qs) punctuation terms termsofar =
  if q `elem` punctuation
  then do_tokenize qs punctuation (terms++[termsofar]) ""
  else do_tokenize qs punctuation terms $ termsofar++[q]


tokenize_query :: String -> String -> IO ()
tokenize_query query punctuation = let tokens = do_tokenize query (punctuation++" ") [] "" in
  mapM_ (putStrLn) [x | x<-tokens, x/=""]

main :: IO()

main = let query = "car? dealers! bmw, audi"
           punctuation = "?!" in
  tokenize_query query punctuation
