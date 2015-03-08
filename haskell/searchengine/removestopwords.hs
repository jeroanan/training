remove_stopwords :: [String] -> [String] -> IO ()
remove_stopwords query stopwords = let processed = [x | x<-query, not (x `elem` stopwords)] in
  mapM_ putStrLn processed


main = remove_stopwords query stopwords
  where query = ["the", "new", "store", "in", "SF"]
        stopwords = ["the", "in"]
