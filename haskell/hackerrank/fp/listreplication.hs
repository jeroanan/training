import Control.Monad
import System.IO

loop n = do
  p <- getLine
  let ps = replicate n p
  mapM_ putStrLn ps
  eof <- isEOF
  if eof
    then return ()
  else
    loop n


main = do
  n <- readLn :: IO Int
  loop n
